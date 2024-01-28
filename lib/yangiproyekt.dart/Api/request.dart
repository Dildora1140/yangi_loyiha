import "dart:convert";
import "package:http/http.dart" as http;

class XabarniYukla {
  static var data;
  Future xabarniOl() async {
    var sayt = Uri.parse(
      'https://heisenbug-premier-league-live-scores-v1.p.rapidapi.com/api/premierleague/team/',
    );
    final sorov = await http.get(sayt, headers: {
      'X-RapidAPI-Key': 'SIGN-UP-FOR-KEY',
      'X-RapidAPI-Host':
          'heisenbug-premier-league-live-scores-v1.p.rapidapi.com'
    });
    var data = jsonDecode(sorov.body);
    print(data);
    return data;
  }
}
