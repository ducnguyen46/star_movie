import '../models/models.dart';

abstract class LocalDataSource {
  Future<AppSettingModel> getAppSettingFromStorage();
  Future<void> saveAppSettingToStorage(AppSettingModel setting);
  RegionsModel getRegionsModelFromStorage();
  Future<void> saveRegionsToStorage(RegionsModel regions);
  AuthenticatedUserModel? getAuthenticatedUserDataFromStorage();
  Future<void> saveAuthenticatedUserDataToStorage(AuthenticatedUserModel data);
  List<GenreModel> getGenresModelFromStorage();
  Future<bool> saveGenresModelsToStorage(List<GenreModel> genresModel);
  List<LanguageModel> getLanguageModelFromStorage();
  Future<bool> saveLanguagesModelToStorage(List<LanguageModel> languagesModel);
}
