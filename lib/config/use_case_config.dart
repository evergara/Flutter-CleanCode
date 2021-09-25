import 'package:flutte_clean_code/domain/use_cases/album/get_album_use_case.dart';
import 'package:flutte_clean_code/infraestructure/driven_adapter/album_api/album_api.dart';
import 'package:flutte_clean_code/infraestructure/driven_adapter/album_api/album_api_delay.dart';

class UseCaseConfig {
  GetAlbumUseCase getAlbumUseCase;
  AlbumApiDelay _albumApi;
  UseCaseConfig() {
    _albumApi = AlbumApiDelay();
    getAlbumUseCase = GetAlbumUseCase(_albumApi);
  }
}
