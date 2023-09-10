import 'package:clean_architecture_2/csv/company_list_parser.dart';
import 'package:clean_architecture_2/data/mapper/company_mapper.dart';
import 'package:clean_architecture_2/data/source/local/stock_dao.dart';
import 'package:clean_architecture_2/data/source/remote/stock_api.dart';
import 'package:clean_architecture_2/domain/model/company_list.dart';
import 'package:clean_architecture_2/domain/repository/stock_repository.dart';
import 'package:clean_architecture_2/util/result.dart';

class StockRepositoryImpl implements StockRepository {

  // remote
  final StockApi _api;
  // local
  final StockDao _dao;
  // parser
  final _parser = CompanyListParser();


  StockRepositoryImpl(this._api, this._dao);

  @override
  Future<Result<List<CompanyList>>> getCompanyList(
      bool fetchFromRemote, String query) async{
    // 캐시에서 찾는다
    final localList = await _dao.searchCompanyList(query);

    // 없다면 리모트에서 가져온다
    final isDbEmpty = localList.isEmpty && query.isEmpty; // 아무것도 검색 안할 때는 전체 리스트를 보여줘야 함
    final shouldJustLoadFromCache = !isDbEmpty && !fetchFromRemote;

    // 캐시
    if (shouldJustLoadFromCache) {
      return Result.success(localList.map((e) => e.toCompanyList()).toList());
    }

    // 리모트
    try{
      final response = await _api.getStockList();
      // csv파일은 response의 body에 들어있다
      final remoteList = await _parser.parse(response.body);

      // 캐시 비우기
      await _dao.clearCompanyList();

      // 캐시 추가

      await _dao.insertCompanyList(remoteList.map((e) => e.toCompanyListEntity()).toList());

      return Result.success(remoteList);
    } catch (e) {
      return Result.error(Exception('Data load failed : ${e.toString()}'));
    }
  }
}
