import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class LanguageMapper extends BaseDataMapper<LanguageModel, Language> {
  @override
  Language toEntity(LanguageModel model) {
    return Language(
      code: model.code,
      englishName: model.englishName,
      name: model.nativeName,
    );
  }
}
