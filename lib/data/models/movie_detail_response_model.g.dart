// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailResponseModelImpl _$$MovieDetailResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailResponseModelImpl(
      id: json['id'] as int? ?? -1,
      imdbId: json['imdb_id'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      originalLanguage: json['original_language'] as String? ?? '',
      title: json['title'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      homepage: json['homepage'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GenreModel>[],
      backdropPath: json['backdrop_path'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
      budget: (json['budget'] as num?)?.toDouble() ?? 0,
      revenue: (json['revenue'] as num?)?.toDouble() ?? 0,
      releaseDate: json['release_date'] as String? ?? '',
      status: json['status'] as String? ?? '',
      runtime: json['runtime'] as int? ?? 0,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
      collection: json['belongs_to_collection'] == null
          ? const CollectionModel()
          : CollectionModel.fromJson(
              json['belongs_to_collection'] as Map<String, dynamic>),
      productionCompanies: (json['production_companies'] as List<dynamic>?)
              ?.map((e) => CompanyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CompanyModel>[],
      credit: json['credits'] == null
          ? const CreditModel()
          : CreditModel.fromJson(json['credits'] as Map<String, dynamic>),
      images: json['images'] == null
          ? const MovieImageResponseModel()
          : MovieImageResponseModel.fromJson(
              json['images'] as Map<String, dynamic>),
      recommendations: json['recommendations'] == null
          ? const MoviesResponseModel()
          : MoviesResponseModel.fromJson(
              json['recommendations'] as Map<String, dynamic>),
      similar: json['similar'] == null
          ? const MoviesResponseModel()
          : MoviesResponseModel.fromJson(
              json['similar'] as Map<String, dynamic>),
      video: json['videos'] == null
          ? const VideoResponseModel()
          : VideoResponseModel.fromJson(json['videos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MovieDetailResponseModelImplToJson(
        _$MovieDetailResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'tagline': instance.tagline,
      'homepage': instance.homepage,
      'overview': instance.overview,
      'genres': instance.genres,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'budget': instance.budget,
      'revenue': instance.revenue,
      'release_date': instance.releaseDate,
      'status': instance.status,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
      'belongs_to_collection': instance.collection,
      'production_companies': instance.productionCompanies,
      'credits': instance.credit,
      'images': instance.images,
      'recommendations': instance.recommendations,
      'similar': instance.similar,
      'videos': instance.video,
    };
