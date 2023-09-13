import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_list_action.freezed.dart';

@freezed
class CompanyListAction with _$CompanyListAction{
  const factory CompanyListAction.refresh() = Refresh;
  const factory CompanyListAction.onSearchQueryChange(String query) = onSearchQueryChange;
}