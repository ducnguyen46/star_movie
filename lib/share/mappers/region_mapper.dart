import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class RegionMapper extends BaseDataMapper<RegionModel, Region> {
  @override
  Region toEntity(RegionModel model) {
    return Region(
      regionCode: model.regionCode,
      englishName: model.englishName,
      nativeName: model.nativeName,
    );
  }
}