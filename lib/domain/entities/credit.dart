import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'credit.freezed.dart';
part 'credit.g.dart';

@freezed
class Credit with _$Credit {
  const factory Credit({
    required List<Cast> casts,
    required List<Crew> crews,
  }) = _Credit;

  factory Credit.fromJson(Map<String, dynamic> json) => _$CreditFromJson(json);
}
