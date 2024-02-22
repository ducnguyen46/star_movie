import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';
import 'package:star_movie/share/utils/utils.dart';

part 'app_auth_state.dart';
part 'app_auth_cubit.freezed.dart';

class AppAuthCubit extends Cubit<AppAuthState> {
  AppAuthCubit({
    required GetAuthenticatedUserDataUseCase getAppAuthUseCase,
    required LoginTMDBGuestUseCase loginTMDBGuestUseCase,
  })  : _getAppAuthUseCase = getAppAuthUseCase,
        _loginTMDBGuestUseCase = loginTMDBGuestUseCase,
        super(const AppAuthState.loading());

  final GetAuthenticatedUserDataUseCase _getAppAuthUseCase;
  final LoginTMDBGuestUseCase _loginTMDBGuestUseCase;

  void getInitialAppAuth() async {
    emit(const AppAuthState.loading());
    final authDataEither = await _getAppAuthUseCase.call(
      const GetAuthenticatedUserDataUseCaseParams(),
    );

    return authDataEither.fold(
        (ex) => emit(AppAuthState.error(
              message: ExceptionMessagesMapper.map(ex),
              exception: ex,
            )), (authUserData) async {
      if (authUserData.isAuthenticatedUser) {
        return emit(AppAuthState.authenticated(
          sessionId: authUserData.sessionId,
        ));
      } else if (!authUserData.isAuthenticatedUser &&
          authUserData.guestSessionId.isNotEmpty) {
        if (_isSessionExpired(authUserData.expiresAt)) {
          final newGuestDataEither =
              await _loginTMDBGuestUseCase.call(const LoginTMDBGuestParams());

          return newGuestDataEither.fold(
              (newGuestEx) => emit(AppAuthState.error(
                    message: ExceptionMessagesMapper.map(newGuestEx),
                    exception: newGuestEx,
                  )), (newGuestData) {
            return emit(AppAuthState.guest(
              guestSessionId: newGuestData.guestSessionId,
              expiresAt: newGuestData.expiresAt,
            ));
          });
        }

        return emit(AppAuthState.guest(
          guestSessionId: authUserData.guestSessionId,
          expiresAt: authUserData.expiresAt,
        ));
      } else {
        return emit(const AppAuthState.notLogIn());
      }
    });
  }

  bool _isSessionExpired(String expiresAt) {
    // Because tmdb time is UTC time, so need transfer local time to UTC time
    DateTime timeNowUtc = DateTime.now().toUtc();
    DateTime expiresTime = DateTimeUtil.tmdbToDateTime(expiresAt);
    return expiresTime.isBefore(timeNowUtc);
  }
}
