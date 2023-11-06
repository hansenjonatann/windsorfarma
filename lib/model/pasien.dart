import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:windsor_farma/util/config.dart';

class Pasien {
  final String? idPasien, nama, hp, email;
  Pasien({this.idPasien, this.nama, this.hp, this.email});
  factory Pasien.fromJSON(Map<String, dynamic> json) {
    return Pasien(
        idPasien: json['id_pasien'],
        nama: json['nama'],
        hp: json['hp'],
        email: json['email']);
  }
}

List<Pasien> pasienFromJson(jsonData) {
  List<Pasien> result =
      List<Pasien>.from(jsonData.map((item) => Pasien.fromJSON(item)));
  return result;
}

// register [POST
Future pasienCreate(Pasien pasien) async {
  String route = AppConfig.API_ENDPOINT + "/pasien/create.php";
  try {
    final response = await http.post(route as Uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
            {'nama': pasien.nama, 'hp': pasien.hp, 'email': pasien.email}));
    return response;
  } catch (e) {
    print('Error : ${e.toString()}');
    return null;
  }
}
