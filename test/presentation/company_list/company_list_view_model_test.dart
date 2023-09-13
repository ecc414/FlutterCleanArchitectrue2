import 'package:clean_architecture_2/data/repository/stock_repository_impl.dart';
import 'package:clean_architecture_2/data/source/local/company_list_entity.dart';
import 'package:clean_architecture_2/data/source/local/stock_dao.dart';
import 'package:clean_architecture_2/data/source/remote/stock_api.dart';
import 'package:clean_architecture_2/presentation/company_list/company_list_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

void main(){
  test('ViewModel must fetch every list of company when initializing', () async{

    Hive.init('asd/asd');
    // Register custom class
    Hive.registerAdapter(CompanyListEntityAdapter());

    final api = StockApi();
    final dao = StockDao();
    final viewModel = CompanyListViewModel(StockRepositoryImpl(api, dao));

    await Future.delayed(const Duration(seconds: 3));

    expect(viewModel.state.companyList.isNotEmpty, true);
  });
}