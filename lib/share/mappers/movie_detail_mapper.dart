import 'package:injectable/injectable.dart';
import 'package:star_movie/data/datasources/data_source.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/language_mapper.dart';
import 'package:star_movie/share/mappers/mappers.dart';
import 'package:star_movie/share/utils/utils.dart';

@Injectable()
class MovieDetailMapper
    extends BaseDataMapper<MovieDetailResponseModel, MovieDetail> {
  final LocalDataSource _localDataSource;
  final GenreMapper _genreMapper;
  final CollectionMapper _collectionMapper;
  final CompanyMapper _companyMapper;
  final MovieImageMapper _movieImageMapper;
  final MovieMapper _movieMapper;
  final VideoMapper _videoMapper;
  final CreditMapper _creditMapper;

  MovieDetailMapper({
    required LocalDataSource localDataSource,
    required GenreMapper genreMapper,
    required CollectionMapper collectionMapper,
    required CompanyMapper companyMapper,
    required MovieImageMapper movieImageMapper,
    required MovieMapper movieMapper,
    required VideoMapper videoMapper,
    required CreditMapper creditMapper,
    required LanguageMapper languageMapper,
  })  : _localDataSource = localDataSource,
        _genreMapper = genreMapper,
        _collectionMapper = collectionMapper,
        _companyMapper = companyMapper,
        _movieImageMapper = movieImageMapper,
        _movieMapper = movieMapper,
        _videoMapper = videoMapper,
        _creditMapper = creditMapper;

  @override
  MovieDetail toEntity(MovieDetailResponseModel model) {
    return MovieDetail(
      id: model.id,
      imdbId: model.imdbId,
      originalTitle: model.originalTitle,
      originalLanguage: _languageCodeMapper(model.originalLanguage),
      title: model.title,
      tagline: model.tagline,
      homepage: model.homepage,
      overview: model.overview,
      genres: _genreMapper.toListEntity(model.genres),
      backdropPath: model.backdropPath,
      posterPath: model.posterPath,
      budget: NumberUtil.toUSCurrency(model.budget),
      revenue: NumberUtil.toUSCurrency(model.revenue),
      releaseDate: DateTimeUtil.releaseDateConvert(model.releaseDate),
      status: model.status,
      runtime: DateTimeUtil.runtimeConvert(model.runtime),
      voteAverage: model.voteAverage,
      collection: _collectionMapper.toEntity(model.collection),
      productionCompanies:
          _companyMapper.toListEntity(model.productionCompanies),
      credit: _creditMapper.toEntity(model.credit),
      backdropImages: _movieImageMapper.toListEntity(model.images.backdrops),
      logoImages: _movieImageMapper.toListEntity(model.images.logos),
      posterImages: _movieImageMapper.toListEntity(model.images.posters),
      recommendations: _movieMapper.toListEntity(model.recommendations.movies),
      similar: _movieMapper.toListEntity(model.similar.movies),
      video: _videoMapper.toListEntity(model.video.videos),
    );
  }

  String _languageCodeMapper(String languageCode) {
    final languages = _localDataSource.getLanguageModelFromStorage();
    final index = languages.indexWhere((lan) => lan.code == languageCode);
    if (index == -1) {
      return languageCode;
    }
    return languages[index].englishName;
  }
}
