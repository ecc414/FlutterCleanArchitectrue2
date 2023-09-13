import 'dart:async';

import 'package:clean_architecture_2/domain/repository/stock_repository.dart';
import 'package:clean_architecture_2/presentation/company_list/company_list_action.dart';
import 'package:clean_architecture_2/presentation/company_list/company_list_state.dart';
import 'package:flutter/material.dart';

class CompanyListViewModel with ChangeNotifier{
  final StockRepository _repository;

  var _state = CompanyListState();

  Timer? _debounce;

  CompanyListState get state => _state;

  CompanyListViewModel(this._repository){
    _getCompanyList();
  }

  onAction(CompanyListAction action){
    action.when(
      refresh: () => _getCompanyList(fetchFromRemote: true),
      onSearchQueryChange: (query) {
        _debounce?.cancel();
        _debounce = Timer(const Duration(milliseconds: 300), () => _getCompanyList(query: query));
      },
    );
  }

  Future _getCompanyList({bool fetchFromRemote = false, String query = ''}) async{
    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();

    final result = await _repository.getCompanyList(fetchFromRemote, query);
    result.when(success: (listOfCompanyList){
      _state = _state.copyWith(
        companyList: listOfCompanyList
      );
    }, error: (e){
      //TODO: 에러 처리
      print('error: ${e.toString()}');
    });


    _state = _state.copyWith(
      isLoading: true,
    );
    notifyListeners();
  }
}