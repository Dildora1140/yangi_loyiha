import 'dart:convert';
import "package:http/http.dart" as http;

class SportApi {
  static var sportData;
  Future getSport() async {
    var sayt = Uri.parse("https://tbot.tma.uz/api/ollobergan-uchuns");
    final sorov = await http.get(sayt, headers: {
      "Content-Type": "application/json",
      "Authorization":
          "Bearer 3a6003a455504405edcaafde4eb33bc14abd6e22a73a78ee88514ca23e1970df0d59b72f6a01912dcfbe359db6fbc6261c1f0721027d98d087cc8433399144bb9e542b4397b74d18c93644c1b20a01bac3d1109cd2962bfc4339e4b568bcdf695669118f92168c93b75d7e4039ec60b60d5fe3b0982f2b3bdcc515feb035e45e"
    });
    sportData = jsonDecode(sorov.body);
    print(sportData);
    return sportData["data"][0]["id"].toString();
  }
}
