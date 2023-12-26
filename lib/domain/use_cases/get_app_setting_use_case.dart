import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/domain/repositories/repository.dart';
import 'package:star_movie/domain/use_cases/base_use_case.dart';
import 'package:star_movie/share/exceptions/app_exception.dart';

part 'get_app_setting_use_case.freezed.dart';

@Injectable()
class GetAppSettingUseCase
    extends BaseUseCase<AppSetting, GetAppSettingParams> {
  GetAppSettingUseCase({required this.repository});

  final Repository repository;

  @override
  Future<Either<AppException, AppSetting>> call(GetAppSettingParams params) {
    return repository.getAppSetting();
  }
}

@freezed
class GetAppSettingParams with _$GetAppSettingParams {
  const factory GetAppSettingParams() = _GetAppSettingParams;
}
