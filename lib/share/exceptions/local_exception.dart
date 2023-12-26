import 'package:star_movie/share/exceptions/exceptions.dart';

class LocalException extends AppException {
  const LocalException(this.type, {this.rootException})
      : super(AppExceptionType.local);

  final LocalExceptionType type;
  final Object? rootException;
}

enum LocalExceptionType {
  save,
  get,
}
