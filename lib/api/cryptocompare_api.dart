import 'dart:convert';
import 'package:http/http.dart' as http;

class CryptoApi {
  static Future<double> getBtcPrice() async {
    const url =
        'https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD';
    final response = await http.get(Uri.parse(url));
    final data = json.decode(response.body);
    final x = data['USD'];
    return x.toDouble();
  }
}
