import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class CreditMapper extends BaseDataMapper<CreditModel, Credit> {
  final CastMapper _castMapper;
  final CrewMapper _crewMapper;

  CreditMapper({
    required CastMapper castMapper,
    required CrewMapper crewMapper,
  })  : _castMapper = castMapper,
        _crewMapper = crewMapper;

  @override
  Credit toEntity(CreditModel model) {
    return Credit(
      casts: _castMapper.toListEntity(model.casts),
      crews: _crewMapper.toListEntity(model.crews),
    );
  }
}
