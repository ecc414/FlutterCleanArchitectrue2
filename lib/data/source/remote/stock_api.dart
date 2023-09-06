import 'package:http/http.dart' as http;

class StockApi{
  static const baseUrl = 'http://www.alphavantage.co/';
  static const apiKey = 'T4RJ6LXYUECFJZSE';

  final http.Client client;

  StockApi(this.client);
  
  Future<http.Response> getStockList(String apiKey) async {
    return await client.get(Uri.parse('https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=$apiKey'));
  }
}