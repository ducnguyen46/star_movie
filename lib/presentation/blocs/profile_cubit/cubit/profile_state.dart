part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loggedInAuthenticated(
    AccountInfo accountInfo,
  ) = ProfileStateLoggedAuthenticated;

  const factory ProfileState.loggedInUnauthenticated() =
      ProfileStateLoggedUnauthenticated;

  const factory ProfileState.loggingIn() = ProfileStateLoggingIn;

  const factory ProfileState.loggingOut() = ProfileStateLoggingOut;

  const factory ProfileState.loggedOut() = ProfileStateLoggedOut;
}
