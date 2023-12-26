import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/navigator/route_path/route_path.dart';

/// check user is logged in as authenticated user or guest user
/// if logged in, navigate to home page
/// or not, redirect to log in page
@Injectable()
class LoggedInGuard extends AutoRouteGuard {
  const LoggedInGuard({required CheckIsLoggedInUseCase checkIsLoggedInUseCase})
      : _checkIsLoggedInUseCase = checkIsLoggedInUseCase;

  final CheckIsLoggedInUseCase _checkIsLoggedInUseCase;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isLoggedInEither = await _checkIsLoggedInUseCase.call(const CheckIsLoggedInParams());
    return isLoggedInEither.fold((ex) {
      router.replaceNamed(RoutePath.logInPage);
    }, (isLoggedIn) {
      router.replaceNamed(isLoggedIn ? RoutePath.homePage : RoutePath.logInPage);
    });
  }
}
