import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:windsor_farma/util/config.dart';
import 'package:windsor_farma/util/session.dart';
import 'package:http/http.dart' as http;
import 'pasien.dart';
import 'dokter.dart';

class RegisPoli {
  final String? idRegisPoli, tglBooking, poli;
  final Pasien? idPasien;
  final Dokter? idDokter;
  RegisPoli(
      {this.idRegisPoli,
      this.idPasien,
      this.idDokter,
      this.tglBooking,
      this.poli});

  factory RegisPoli.fromJSON(Map<String, dynamic> json) {
    return RegisPoli(
        idRegisPoli: json['id_regis_poli'],
        idPasien: Pasien.fromJSON(json['id_pasien']),
        idDokter: Dokter.fromJSON(json['id_dokter']),
        tglBooking: json['tgl_booking'],
        poli: json['poli']);
  }
}

List<RegisPoli> regisPoliFromJson(jsonData) {
  List<RegisPoli> result =
      List<RegisPoli>.from(jsonData.map((item) => RegisPoli.fromJSON(item)));
  return result;
}

// index [GET]
Future<List<RegisPoli>> fetchRegisPolis() async {
  final prefs = await SharedPreferences.getInstance();
  String idPasien = prefs.getString(ID_PASIEN) ?? "";
  String route = AppConfig.API_ENDPOINT + "regis-poli/index.php";
  final response = await http.get(route as Uri);
  if (response.statusCode == 200) {
    var jsonResp = json.decode(response.body);
    return regisPoliFromJson(jsonResp);
  } else {
    throw Exception('Failed to load $route , status: ${response.statusCode}');
  }
}

// create (POST)

Future regisPoliCreate(RegisPoli regisPoli) async {
  final prefs = await SharedPreferences.getInstance();
  String route = AppConfig.API_ENDPOINT + "regis-poli/create.php";
  try {
    final response = await http.post(route as Uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          'id_pasien': prefs.getString(ID_PASIEN),
          'id_dokter': regisPoli.idDokter.idDokter,
          'tgl_booking': regisPoli.tglBooking,
          'poli': regisPoli.poli
        }));
    return response;
  } catch (e) {
    print('Error: ${e.toString()}');
    return null;
  }
}

// delete [GET]
Future deleteRegisPoli(id) async {
  String route = AppConfig.API_ENDPOINT + "regis-poli/delete.php?id=$id";
  final response = await http.get(route as Uri);
  if (response.statusCode == 200) {
    var jsonResp = json.decode(response.body);
    return jsonResp['message'];
  } else {
    return response.body.toString();
  }
}
