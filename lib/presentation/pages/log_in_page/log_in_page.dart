import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/use_cases/login_tmdb_authenticated_use_case.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/app_auth_cubit/app_auth_cubit.dart';
import 'package:star_movie/presentation/blocs/login_cubit/login_cubit.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:star_movie/share/utils/utils.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        requestTokenUseCase: getIt<CreateRequestTokenUseCase>(),
        loginTMDBGuestUseCase: getIt<LoginTMDBGuestUseCase>(),
        loginTMDBUseCase: getIt<LoginTMDBAuthenticatedUseCase>(),
      ),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (BuildContext context, LoginState state) {
          // Show loading when requesting and hide when others
          if (state is RequestingGuest ||
              state is RequestingToken ||
              state is RequestingTMDBSession) {
            LoaderUtil.showLoading(context);
          } else {
            LoaderUtil.hideLoading();
          }

          // Show dialog when error
          if (state is Error) {
            LoaderUtil.hideLoading();
            AppDialogUtil.showAppDialog(
              context,
              AppDialogInfo.errorRetryDialog(
                title: 'Error'.hardCode,
                messages: state.message,
                onRetryAction: () {
                  Navigator.of(context, rootNavigator: true).pop();
                  state.onRetry?.call();
                },
                onCancelAction: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
              ),
            );
          }
          // transaction to acception user after got token
          if (state is GotToken) {
            AppDialogUtil.showAppDialog(
              context,
              AppDialogInfo.confirmDialog(
                  title: context.tr('notice'),
                  messages: context.tr('user_approval_description'),
                  onPressedAction: () async {
                    final token = state.token;
                    final isApproval = await context.pushNamed<bool?>(
                      RoutePath.userApprovalPage.named,
                      pathParameters: {
                        AppConstants.pathToken: token,
                      },
                    );
                    if (context.mounted) {
                      Navigator.of(context, rootNavigator: true).pop();
                      context.read<LoginCubit>().loginAsTMDBAccount(
                          context, isApproval ?? false, token);
                    }
                  }),
            );
          }
          // transaction to home page after got guest session
          if (state is GotGuestSession) {
            context.read<AppAuthCubit>().getInitialAppAuth();
            context.replaceNamed(RoutePath.homeNamed);
          }

          // transaction to home page after got session id
          if (state is GotTMDBSession) {
            context.read<AppAuthCubit>().getInitialAppAuth();
            context.replaceNamed(RoutePath.homeNamed);
          }
        },
        builder: (context, state) {
          final loginCubit = context.read<LoginCubit>();

          return AppScaffold(
            appBar: AppBarCommon(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text(context.tr('login')),
            ),
            body: Padding(
              padding: const EdgeInsets.all(Dimens.d26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.tr('login_tmdb_description'),
                    style: AppTextStyle.s14Regular,
                  ),
                  const SizedBox(
                    height: Dimens.d16,
                  ),
                  AppFillButton(
                    onPressed: () {
                      // Call request token
                      loginCubit.requestTokenTMDB();
                    },
                    title: context.tr('login_tmdb_account'),
                  ),
                  const SizedBox(
                    height: Dimens.d32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Dimens.d16),
                          child: Divider(
                            height: 1,
                            color: AppColors.richBlack20,
                          ),
                        ),
                      ),
                      Text(
                        context.tr('or'),
                        style: AppTextStyle.s12Regular
                            .copyWith(color: AppColors.richBlack50),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Dimens.d16),
                          child: Divider(
                            height: 1,
                            color: AppColors.richBlack20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimens.d32,
                  ),
                  AppOutlineButton(
                    onPressed: () {
                      loginCubit.loginAsTMDBGuest();
                    },
                    title: context.tr('login_guest'),
                  ),
                  const SizedBox(
                    height: Dimens.d16,
                  ),
                  Text(
                    context.tr('login_guest_description'),
                    style: AppTextStyle.s14Regular,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
