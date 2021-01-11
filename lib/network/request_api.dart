import 'package:http/http.dart' as http;
import 'package:simple_flutter/network/base_url.dart';

class RequestApi {
  String hostPath = "books/v1/";
  String volume = "volumes?";

  searchVolumeKeyword(String keyword) async {
    try {
      final response = await http.get(ApiService().baseUrl + hostPath + volume +"q={$keyword}");
      return response;
    } catch (e){
      print(e);
    }
  }
}