import 'package:intl/intl.dart';
import 'package:star_movie/share/utils/utils.dart';

class DateTimeUtil {
  // TMDB date time format
  static final DateFormat _tmdbFormat = DateFormat('yyyy-MM-dd HH:mm:ss UTC');

  /// Format 'yyyy-MM-dd HH:mm:ss UTC' to DateTime
  static DateTime tmdbToDateTime(String dateTime) {
    return _tmdbFormat.parse(dateTime);
  }

  /// Format 'yyyy-MM-dd' to 'dd/MM/yyyy'
  static String releaseDateConvert(String releaseDate) {
    final releaseDateTMDB = DateFormat('yyyy-MM-dd');
    final releaseFormat = DateFormat('dd/MM/yyyy');
    if (releaseDate.isEmpty) return releaseDate;
    try {
      return releaseFormat.format(releaseDateTMDB.parse(releaseDate));
    } on FormatException catch (e) {
      LogUtil.e(
        e.message,
        name: 'DateTimeUtil.releaseDateConvert',
        error: e,
      );
    }
    return '';
  }

  /// Convert minute(s) to hour(s) and minute(s)
  static String runtimeConvert(int runtimeVal) {
    String runtime = '';

    if (runtimeVal <= 0) {
      return runtime;
    }

    const oneHour = 60; // minutes
    final hourVal = runtimeVal ~/ oneHour;
    final minuteVal = runtimeVal % oneHour;

    String hour = hourVal > 0 ? '${hourVal}h' : '';
    String minute = minuteVal > 0 ? '${minuteVal}m' : '';

    runtime = '$hour $minute'.trim();

    return runtime;
  }
}
