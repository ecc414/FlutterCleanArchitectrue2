import 'package:clean_architecture_2/csv/cvs_parser.dart';
import 'package:clean_architecture_2/domain/model/company_list.dart';
import 'package:csv/csv.dart';

class CompanyListParser implements CsvParser<CompanyList>{
  @override
  Future<List<CompanyList>> parse(String csvString) async{
    List<List<dynamic>> csvValues = const CsvToListConverter().convert(csvString);

    // 엑셀같은 프로그램으로 보았을 때 행 타이틀을 나타내는 열을 삭제
    csvValues.removeAt(0);

    return csvValues.map((e){
      final symbol = e[0] ?? '';
      final name = e[1] ?? '';
      final exchange = e[2] ?? '';
      return CompanyList(symbol: symbol, name: name, exchange: exchange);
    }).where((e) => e.name.isNotEmpty && e.symbol.isNotEmpty && e.exchange.isNotEmpty).toList();
  }
}