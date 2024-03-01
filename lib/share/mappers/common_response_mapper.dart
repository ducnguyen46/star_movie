import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class CommonResponseMapper
    extends BaseDataMapper<CommonResponseModel, CommonResponse> {
  @override
  CommonResponse toEntity(CommonResponseModel model) {
    return CommonResponse(
      isSuccess: model.isSuccess,
      statusCode: model.statusCode,
      message: model.message,
    );
  }
}
