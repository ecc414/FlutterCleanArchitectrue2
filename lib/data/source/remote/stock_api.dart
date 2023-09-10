import 'package:http/http.dart' as http;

class StockApi{
  static const baseUrl = 'http://www.alphavantage.co/';
  static const apiKey = 'T4RJ6LXYUECFJZSE';

  final http.Client _client;

  StockApi({http.Client? client}) : _client = client ?? http.Client();

  Future<http.Response> getStockList({String apiKey = apiKey}) async {
    return await _client.get(Uri.parse('https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=$apiKey'));
  }
}