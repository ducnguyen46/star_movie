import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_movie/domain/entities/account_info.dart';
import 'package:star_movie/domain/use_cases/use_cases.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({
    required LogOutUseCase logOutUseCase,
  })  : _logOutUseCase = logOutUseCase,
        super(const ProfileState.loggingIn());

  final LogOutUseCase _logOutUseCase;

  void loggedInAuthenticated(AccountInfo accountInfo) {
    emit(ProfileState.loggedInAuthenticated(accountInfo));
  }

  void loggedInUnauthenticated() {
    emit(const ProfileState.loggedInUnauthenticated());
  }

  void logOutAccount({String sessionId = ''}) async {
    emit(const ProfileState.loggingOut());
    final logoutEither =
        await _logOutUseCase.call(LogOutUseCaseParams(sessionId: sessionId));
    return logoutEither.fold((ex) => emit(const ProfileState.loggedOut()),
        (result) => emit(const ProfileState.loggedOut()));
  }
}
