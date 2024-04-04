import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/app_auth_cubit/app_auth_cubit.dart';
import 'package:star_movie/presentation/blocs/profile_cubit/cubit/profile_cubit.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:star_movie/share/utils/utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(
        logOutUseCase: getIt<LogOutUseCase>(),
      ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AppAuthCubit, AppAuthState>(
            listener: (authContext, authState) {
              final profileCubit = context.read<ProfileCubit>();
              if (authState is AppAuthAuthenticated) {
                profileCubit.loggedInAuthenticated(authState.accountInfo);
              } else {
                profileCubit.loggedInUnauthenticated();
              }
            },
          ),
          BlocListener<ProfileCubit, ProfileState>(
            listener: (context, state) {
              if (state is ProfileStateLoggingIn ||
                  state is ProfileStateLoggingOut) {
                LoaderUtil.showLoading(context);
              } else if (state is ProfileStateLoggedAuthenticated ||
                  state is ProfileStateLoggedUnauthenticated) {
                LoaderUtil.hideLoading();
              } else if (state is ProfileStateLoggedOut) {
                LoaderUtil.hideLoading();
                context.goNamed(RoutePath.logInPage.named);
              }
            },
          ),
        ],
        child: Builder(builder: (context) {
          return AppScaffold(
            appBar: AppBarCommon(
              title: Text('Profile'.hardCode),
              centerTitle: false,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Avatar and name
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlocBuilder<AppAuthCubit, AppAuthState>(
                      builder: (authContext, authState) {
                        if (authState is AppAuthAuthenticated) {
                          return CachedCirclePersonImage(
                            boxFit: BoxFit.fill,
                            imageUrl: _getAvatarImageURL(
                                authState.accountInfo.avatar),
                            height: Dimens.d120,
                            width: Dimens.d120,
                          );
                        } else {
                          return CircleAvatar(
                            radius: Dimens.d60,
                            child: Assets.images.icons.icProfile
                                .svg(width: Dimens.d40),
                          );
                        }
                      },
                    ),
                  ),
                ),

                BlocBuilder<AppAuthCubit, AppAuthState>(
                  builder: (authContext, authState) {
                    return Text(
                      _getUserName(authState),
                      style: AppTextStyle.s16SemiBold,
                    );
                  },
                ),

                BlocBuilder<AppAuthCubit, AppAuthState>(
                  builder: (authContext, authState) {
                    if (authState is AppAuthAuthenticated &&
                        authState.accountInfo.name.isNotEmpty) {
                      return Text(
                        authState.accountInfo.username,
                        style: AppTextStyle.s12Medium.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.richBlack50,
                        ),
                      );
                    } else {
                      return const Gap(0);
                    }
                  },
                ),

                const Gap(Dimens.d24),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    final profileCubit = context.read<ProfileCubit>();
                    final appAuthState = context.read<AppAuthCubit>().state;
                    profileCubit.logOutAccount(
                      sessionId: appAuthState is AppAuthAuthenticated
                          ? appAuthState.sessionId
                          : '',
                    );
                  },
                  child: Container(
                    height: Dimens.d40,
                    width: double.infinity,
                    color: AppColors.redPrimary.lighten(40),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Dimens.d16,
                            right: Dimens.d16,
                          ),
                          child: Text(
                            'Logout',
                            style: AppTextStyle.s14SemiBold.copyWith(
                              color: AppColors.redPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  String _getAvatarImageURL(AccountAvatar avatar) {
    final gravatar = avatar.gravatar;
    final tmdbAvatar = avatar.tmdbAvatar;
    if (tmdbAvatar.avatarPath != null) {
      return '${ImageConfigConstant.profileImgH632}${tmdbAvatar.avatarPath}';
    } else {
      return '${ImageConfigConstant.gravatarImg}${gravatar.hash}?size=200';
    }
  }

  String _getUserName(AppAuthState state) {
    if (state is AppAuthAuthenticated) {
      if (state.accountInfo.name.isNotEmpty) {
        return state.accountInfo.name;
      } else {
        return state.accountInfo.username;
      }
    } else {
      return 'You are Guest'.hardCode;
    }
  }
}
