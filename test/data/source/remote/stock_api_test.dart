import 'package:clean_architecture_2/csv/company_list_parser.dart';
import 'package:clean_architecture_2/data/source/remote/stock_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test("Network test", () async{
    final response = await StockApi().getStockList();

    final _parser = CompanyListParser();
    final companyList = await _parser.parse(response.body);

    expect(companyList[0].symbol, "A");
    expect(companyList[0].name, "Agilent Technologies Inc");
    expect(companyList[0].exchange, "NYSE");
  });
}