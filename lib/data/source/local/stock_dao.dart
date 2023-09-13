// DB에 접근을 하는 기능들을 모아놓는 클래스
import 'package:clean_architecture_2/data/source/local/company_list_entity.dart';
import 'package:hive/hive.dart';

class StockDao{
  static const boxName = "stock.db";

  static const companyListKey = 'companyListKey';

  // 데이터를 다루는 함수들
    // 추가
  Future<void> insertCompanyList(List<CompanyListEntity> listOfCompanyListEntity) async{
    final box = await Hive.openBox<CompanyListEntity>(boxName);
    await box.addAll(listOfCompanyListEntity);
    await box.close();
  }
    // 클리어
  Future<void> clearCompanyList() async{
    final box = await Hive.openBox<CompanyListEntity>(boxName);
    await box.clear();
    await box.close();
  }
    // 검색
  Future<List<CompanyListEntity>> searchCompanyList(String query) async{
    final box = await Hive.openBox<CompanyListEntity>(boxName);
    final List<CompanyListEntity> companyList = box.values.toList();
    await box.close();
    return companyList
        .where((company) =>
            company.symbol == query.toUpperCase() ||
            company.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}