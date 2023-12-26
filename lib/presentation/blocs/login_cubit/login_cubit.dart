import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/use_cases/login_tmdb_authenticated_use_case.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';
import 'package:star_movie/share/exceptions/exception_mapper/exception_mapper.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required CreateRequestTokenUseCase requestTokenUseCase,
    required LoginTMDBGuestUseCase loginTMDBGuestUseCase,
    required LoginTMDBAuthenticatedUseCase loginTMDBUseCase,
  })  : _requestTokenUseCase = requestTokenUseCase,
        _loginTMDBGuestUseCase = loginTMDBGuestUseCase,
        _loginTMDBUseCase = loginTMDBUseCase,
        super(const LoginState.initial());

  final CreateRequestTokenUseCase _requestTokenUseCase;
  final LoginTMDBGuestUseCase _loginTMDBGuestUseCase;
  final LoginTMDBAuthenticatedUseCase _loginTMDBUseCase;

  void requestTokenTMDB() async {
    emit(const LoginState.requestingToken());

    final tokenEither = await _requestTokenUseCase
        .call(const CreateRequestTokenUseCaseParams());
    return tokenEither.fold(
      (ex) => LoginState.error(
        message: ExceptionMessagesMapper.map(ex),
        exception: ex,
        onRetry: requestTokenTMDB,
      ),
      (token) => emit(LoginState.gotToken(token: token)),
    );
  }

  void loginAsTMDBGuest() async {
    emit(const LoginState.requestingGuest());

    final tokenEither =
        await _loginTMDBGuestUseCase.call(const LoginTMDBGuestParams());
    return tokenEither.fold(
      (ex) => emit(
        LoginState.error(
          exception: ex,
          message: ExceptionMessagesMapper.map(ex),
          onRetry: loginAsTMDBGuest,
        ),
      ),
      (guestUserData) => emit(LoginState.gotGuestSession(
        guestSessionId: guestUserData.guestSessionId,
      )),
    );
  }

  void loginAsTMDBAccount(
      BuildContext context, bool isApproval, String token) async {
    if (isApproval) {
      emit(const LoginState.requestTMDBSession());
      final tmdbAuthDataEither = await _loginTMDBUseCase
          .call(LoginTMDBAuthenticatedUseCaseParams(requestToken: token));

      return tmdbAuthDataEither.fold(
        (ex) => emit(LoginState.error(
          exception: ex,
          message: ExceptionMessagesMapper.map(ex),
        )),
        (authData) =>
            emit(LoginState.gotTMDBSession(sessionId: authData.sessionId)),
      );
    } else {
      emit(LoginState.error(
          message: context.tr('user_not_approval_description')));
    }
  }
}
