import 'package:clean_architecture_2/domain/model/company_list.dart';
import 'package:clean_architecture_2/util/result.dart';

abstract class StockRepository{
  Future<Result<List<CompanyList>>> getCompanyList(
      bool fetchFromRemote, String query);
}