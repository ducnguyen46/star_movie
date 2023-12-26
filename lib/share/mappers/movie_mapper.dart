import 'package:injectable/injectable.dart';
import 'package:star_movie/data/datasources/data_source.dart';
import 'package:star_movie/data/models/models.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/share/mappers/mappers.dart';
import 'package:star_movie/share/utils/utils.dart';

@Injectable()
class MovieMapper extends BaseDataMapper<MovieModel, Movie> {
  MovieMapper(LocalDataSource localDataSource, GenreMapper genreMapper)
      : _localDataSource = localDataSource,
        _genreMapper = genreMapper;

  final LocalDataSource _localDataSource;
  final GenreMapper _genreMapper;

  @override
  Movie toEntity(MovieModel model) {
    return Movie(
      id: model.id,
      title: model.title,
      posterPath: model.posterPath,
      backdropPath: model.backdropPath,
      voteAverage: model.voteAverage,
      genres: _genresFromGenreIds(model.genreIds),
      releaseDate: DateTimeUtil.releaseDateConvert(model.releaseDate),
    );
  }

  List<Genre> _genresFromGenreIds(List<int> genreIds) {
    final localGenres = _localDataSource.getGenresModelFromStorage();
    final genres = <Genre>[];

    for (var genre in localGenres) {
      if (genreIds.contains(genre.id)) {
        genres.add(_genreMapper.toEntity(genre));
      }
    }

    return genres;
  }
}
