import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/constants/localization_constant.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'change_app_language_use_case.freezed.dart';

@Injectable()
class ChangeAppLanguageUseCase
    extends BaseUseCase<bool, ChangeAppLanguageUseCaseParams> {
  const ChangeAppLanguageUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, bool>> call(
      ChangeAppLanguageUseCaseParams params) {
    return repository.changeAppLanguage(params.languageCode);
  }
}

@freezed
class ChangeAppLanguageUseCaseParams with _$ChangeAppLanguageUseCaseParams {
  const factory ChangeAppLanguageUseCaseParams({
    @Default(LanguageCode.en) LanguageCode languageCode,
  }) = _ChangeAppLanguageUseCase;
}
