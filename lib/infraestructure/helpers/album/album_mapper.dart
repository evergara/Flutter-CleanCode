import 'package:flutte_clean_code/domain/models/album/album.dart';
import 'package:flutte_clean_code/infraestructure/helpers/common/base_mapper.dart';

class AlbumMapper implements BaseMapper<Album> {
  @override
  fromMap(Map<String, dynamic> json) => Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl']);
}
