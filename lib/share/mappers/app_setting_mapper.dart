import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class AppSettingMapper extends BaseDataMapper<AppSettingModel, AppSetting> {
  @override
  AppSetting toEntity(AppSettingModel model) {
    final languageCode = LanguageCode.values.firstWhere(
      (lang) => lang.language.languageCode == model.languageCode,
      orElse: () => LanguageCode.en,
    );
    return AppSetting(
      isOpened: model.isOpened,
      isDarkMode: model.isDarkMode,
      languageCode: languageCode,
    );
  }
}
