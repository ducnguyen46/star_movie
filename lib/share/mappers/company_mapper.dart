import 'package:injectable/injectable.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';

@Injectable()
class CompanyMapper extends BaseDataMapper<CompanyModel, Company> {
  @override
  Company toEntity(CompanyModel model) {
    return Company(
      id: model.id,
      name: model.name,
      logoPath: model.logoPath,
    );
  }
}
