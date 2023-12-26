/// From gender value (TMDB) to Gender
/// Gender: 0 - Not specified, 1 - Female, 2 - Male
enum Gender { notSpecified, male, female }

extension GenderX on int {
  Gender toGender() {
    if (this == 0) {
      return Gender.notSpecified;
    }
    if (this == 1) {
      return Gender.female;
    }
    if (this == 2) {
      return Gender.male;
    }
    return Gender.notSpecified;
  }
}

/// From video site TMDB to VideoSite
/// VideoSite: YouTube -> youtube,
enum VideoSite { youtube, other }

extension VideoSiteX on String {
  VideoSite toVideoSite() {
    if (this == 'YouTube') {
      return VideoSite.youtube;
    }
    return VideoSite.other;
  }
}
