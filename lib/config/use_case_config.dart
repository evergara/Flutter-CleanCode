import 'package:flutte_clean_code/domain/use_cases/album/get_album_use_case.dart';

class UseCaseConfig {
  GetAlbumUseCase getAlbumUseCase;
  AlbumApiDelay _albumApi;
  UseCaseConfig() {
    _albumApi = AlbumApiDelay();
    getAlbumUseCase = GetAlbumUseCase(_albumApi);
  }
}
