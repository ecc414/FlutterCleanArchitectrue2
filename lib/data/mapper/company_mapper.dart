import 'package:clean_architecture_2/data/source/local/company_list_entity.dart';
import 'package:clean_architecture_2/domain/model/company_list.dart';

extension ToComanyList on CompanyListEntity{
  CompanyList toCompanyList() => CompanyList(symbol: symbol, name: name, exchange: exchange);
}

extension ToCompanyListEntity on CompanyList{
  CompanyListEntity toCompanyListEntity() => CompanyListEntity(symbol: symbol, name: name, exchange: exchange);
}