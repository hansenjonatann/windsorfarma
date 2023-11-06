import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:windsor_farma/model/pasien.dart';
import 'package:windsor_farma/util/config.dart';
import 'package:http/http.dart';

class User {
  final String? idUser , username , password;
  final Pasien? idPasien;
  User({this.idUser , this.username , this.password , this.idPasien});
  factory User.fromJSON(Map<String , dynamic > json) {
    return User(
      idUser: json['id_user'],
      username: json['username'],
      password: json['password'],
      idPasien: (json['id_pasien'] != null ) ? Pasien.fromJSON(json['id_pasien']) : null
    );
  }
}

// login [POST]
Future<Response?> login(User user ) async {
  String route = AppConfig.API_ENDPOINT + "/login.php";
  try{
    final response = await http.post(route as Uri , 
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({'username': user.username , 'password': user.password})
    );
    print(response.body.toString());
    return response;
  }catch(e) {
    print('Error : ${e.toString()}');
    return null;
  }
}