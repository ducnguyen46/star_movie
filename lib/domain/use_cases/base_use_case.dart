import 'package:dartz/dartz.dart';
import 'package:star_movie/share/exceptions/exceptions.dart';

abstract class BaseUseCase<Type, Params> {
  const BaseUseCase();

  Future<Either<AppException, Type>> call(Params params);
}
