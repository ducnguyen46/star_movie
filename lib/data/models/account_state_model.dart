import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state_model.freezed.dart';
part 'account_state_model.g.dart';

@freezed
class AccountStateModel with _$AccountStateModel {
  const factory AccountStateModel({
    @JsonKey(name: 'id') @Default(-1) int movieId,
    @JsonKey(name: 'favorite') @Default(false) bool favorite,
    @JsonKey(name: 'rated') @Default(false) dynamic rated,
    @JsonKey(name: 'watchlist') @Default(false) bool watchlist,
  }) = _AccountStateModel;

  factory AccountStateModel.fromJson(Map<String, dynamic> json) =>
      _$AccountStateModelFromJson(json);
}
