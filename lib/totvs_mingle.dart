library totvs_mingle;

import 'package:http/http.dart' as http;
import 'dart:convert';

class MingleService {
  String apiUrl;
  String appId;

  MingleService(this.apiUrl, this.appId);

  Future<Map<String, dynamic>> login(
      String email, String pwd, String alias) async {
    Map<String, dynamic> body = {
      'login': email,
      'alias': alias,
      'password': pwd,
      'app_id': appId,
      'device_id':'flutter'
    };
    var auth_api = '$apiUrl/api/v1/auth/app/authenticate';
    final response = await http.post(
      Uri.parse(auth_api),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
        Map<String, dynamic> responseData = json.decode(response.body);
        return responseData;
    } else {
      Map<String, dynamic> responseData = json.decode(response.body);
        return responseData;
      // throw Exception('Falha ao enviar dados para a API');
    }
  }
}
