// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetail _$$_MovieDetailFromJson(Map<String, dynamic> json) =>
    _$_MovieDetail(
      id: json['id'] as int,
      imdbId: json['imdbId'] as String,
      originalTitle: json['originalTitle'] as String,
      originalLanguage: json['originalLanguage'] as String,
      title: json['title'] as String,
      tagline: json['tagline'] as String,
      homepage: json['homepage'] as String,
      overview: json['overview'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      backdropPath: json['backdropPath'] as String,
      posterPath: json['posterPath'] as String,
      budget: json['budget'] as String,
      revenue: json['revenue'] as String,
      releaseDate: json['releaseDate'] as String,
      status: json['status'] as String,
      runtime: json['runtime'] as String,
      voteAverage: (json['voteAverage'] as num).toDouble(),
      collection:
          Collection.fromJson(json['collection'] as Map<String, dynamic>),
      productionCompanies: (json['productionCompanies'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      credit: Credit.fromJson(json['credit'] as Map<String, dynamic>),
      backdropImages: (json['backdropImages'] as List<dynamic>)
          .map((e) => MovieImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      logoImages: (json['logoImages'] as List<dynamic>)
          .map((e) => MovieImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      posterImages: (json['posterImages'] as List<dynamic>)
          .map((e) => MovieImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      similar: (json['similar'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      video: (json['video'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool? ?? false,
      inWatchList: json['inWatchList'] as bool? ?? false,
      rate: (json['rate'] as num?)?.toDouble() ?? -1,
    );

Map<String, dynamic> _$$_MovieDetailToJson(_$_MovieDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imdbId': instance.imdbId,
      'originalTitle': instance.originalTitle,
      'originalLanguage': instance.originalLanguage,
      'title': instance.title,
      'tagline': instance.tagline,
      'homepage': instance.homepage,
      'overview': instance.overview,
      'genres': instance.genres,
      'backdropPath': instance.backdropPath,
      'posterPath': instance.posterPath,
      'budget': instance.budget,
      'revenue': instance.revenue,
      'releaseDate': instance.releaseDate,
      'status': instance.status,
      'runtime': instance.runtime,
      'voteAverage': instance.voteAverage,
      'collection': instance.collection,
      'productionCompanies': instance.productionCompanies,
      'credit': instance.credit,
      'backdropImages': instance.backdropImages,
      'logoImages': instance.logoImages,
      'posterImages': instance.posterImages,
      'recommendations': instance.recommendations,
      'similar': instance.similar,
      'video': instance.video,
      'isFavorite': instance.isFavorite,
      'inWatchList': instance.inWatchList,
      'rate': instance.rate,
    };
