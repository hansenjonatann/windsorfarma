import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:windsor_farma/util/util.dart';

class Dokter {
  final String? idDokter, nama, hp;
  Dokter({this.idDokter, this.nama, this.hp});
  factory Dokter.fromJSON(Map<String, dynamic> json) {
    return Dokter(
        idDokter: json['id_dokter'], nama: json['nama'], hp: json['hp']);
  }
}

List<Dokter> dokterFromJson(jsonData) {
  List<Dokter> result =
      List<Dokter>.from(jsonData.map((item) => Dokter.fromJSON(item)));
  return result;
}

//index
Future<List<Dokter>> fetchDokters() async {
  String route = AppConfig.API_ENDPOINT + "dokter/index.php";
  final response = await http.get(route as Uri);
  if (response.statusCode == 200) {
    var jsonResp = json.decode(response.body);
    return dokterFromJson(jsonResp);
  } else {
    throw Exception(
        'Failed to load data with $route , status: ${response.statusCode}');
  }
}
