import 'dart:convert';

import 'package:clean_architecture_2/data/source/remote/dto/company_info_dto.dart';
import 'package:http/http.dart' as http;

class StockApi{
  static const baseUrl = 'http://www.alphavantage.co';
  static const apiKey = 'T4RJ6LXYUECFJZSE';

  final http.Client _client;

  StockApi({http.Client? client}) : _client = client ?? http.Client();

  Future<http.Response> getStockList({String apiKey = apiKey}) async {
    return await _client.get(Uri.parse('$baseUrl/query?function=LISTING_STATUS&apikey=$apiKey'));
  }

  Future<CompanyInfoDTO> getCompanyInfo({required String symbol, String apiKey = apiKey}) async {
    final response = await _client.get(Uri.parse('$baseUrl/query?function=OVERVIEW&symbol=$symbol&apikey=$apiKey'));
    return CompanyInfoDTO.fromJson(jsonDecode(response.body));
  }
}