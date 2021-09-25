import 'dart:convert';
import 'dart:io';
import "package:http/http.dart" as http;
import 'package:flutte_clean_code/infraestructure/helpers/album/album_mapper.dart';
import 'package:flutte_clean_code/domain/models/album/album.dart';
import 'package:flutte_clean_code/domain/models/album/gateway/alubm_gateway.dart';

class AlbumApiDelay extends AlbumGateway {
  AlbumMapper _albumMapper = AlbumMapper();
  String url = 'https://jsonplaceholder.typicode.com/photos/';
  @override
  Future<List<Album>> getAll() async {
    throw Exception('No se ha implementado este método ');
  }

  @override
  Future<Album> getByID(String id) async {
    sleep(Duration(seconds: 4));
    final response = await http.get(Uri.parse(url + id));
    if (response.statusCode == 200) {
      return _albumMapper.fromMap(jsonDecode(response.body));
    } else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }
}
