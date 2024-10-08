import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.freezed.dart';
part 'account_state.g.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    required int movieId,
    required bool isFavorite,
    required dynamic rated,
    required bool isWatchlist,
  }) = _AccountState;

  factory AccountState.fromJson(Map<String, dynamic> json) =>
      _$AccountStateFromJson(json);
}
