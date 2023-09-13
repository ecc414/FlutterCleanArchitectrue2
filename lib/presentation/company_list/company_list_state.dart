import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_architecture_2/domain/model/company_list.dart';

part 'company_list_state.g.dart';

part 'company_list_state.freezed.dart';

@freezed
class CompanyListState with _$CompanyListState {
  const factory CompanyListState({
    @Default([]) List<CompanyList> companyList,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default('') String searchQuery,
  }) = _CompanyListState;

  factory CompanyListState.fromJson(Map<String, Object?> json) =>
      _$CompanyListStateFromJson(json);
}
