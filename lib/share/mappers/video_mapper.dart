import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class VideoMapper extends BaseDataMapper<VideoModel, Video> {
  @override
  Video toEntity(VideoModel model) {
    return Video(
      title: model.title,
      key: model.key,
      site: model.site.toVideoSite(),
      isOfficialVid: model.isOfficialVid,
    );
  }
}
