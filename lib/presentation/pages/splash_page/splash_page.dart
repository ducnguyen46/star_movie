import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_movie/di/di.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/presentation/blocs/app_auth_cubit/app_auth_cubit.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';
import 'package:star_movie/share/resources/resources.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppAuthCubit(
        getAppAuthUseCase: getIt.get<GetAuthenticatedUserDataUseCase>(),
        loginTMDBGuestUseCase: getIt<LoginTMDBGuestUseCase>(),
      )..getInitialAppAuth(),
      child: BlocListener<AppAuthCubit, AppAuthState>(
        listener: (context, state) {
          if (state is AppAuthNotLogIn) {
            // navigate to login page
            context.router.replaceNamed(RoutePath.logInPage);
          } else if (state is AppAuthGuest || state is AppAuthAuthenticated) {
            // navigate to home page
            context.router.replaceNamed(RoutePath.homePage);
          }
        },
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  HexColor('#E51937'),
                  HexColor('#DB5252'),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Assets.images.whiteLogo.svg(),
            ),
          ),
        ),
      ),
    );
  }
}
