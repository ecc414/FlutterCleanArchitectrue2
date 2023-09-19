import 'package:freezed_annotation/freezed_annotation.dart';


part 'company_list.freezed.dart';
part 'company_list.g.dart';


@freezed
class CompanyList with _$CompanyList{
  const factory CompanyList({
    required String symbol,
    required String name,
    required String exchange,
}) = _CompanyListing;

  factory CompanyList.fromJson(Map<String, Object?> json) => _$CompanyListFromJson(json);
}