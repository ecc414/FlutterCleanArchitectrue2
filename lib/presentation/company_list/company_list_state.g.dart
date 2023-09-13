// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyListState _$$_CompanyListStateFromJson(Map<String, dynamic> json) =>
    _$_CompanyListState(
      companyList: (json['companyList'] as List<dynamic>?)
              ?.map((e) => CompanyList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      isRefreshing: json['isRefreshing'] as bool? ?? false,
      searchQuery: json['searchQuery'] as String? ?? '',
    );

Map<String, dynamic> _$$_CompanyListStateToJson(_$_CompanyListState instance) =>
    <String, dynamic>{
      'companyList': instance.companyList,
      'isLoading': instance.isLoading,
      'isRefreshing': instance.isRefreshing,
      'searchQuery': instance.searchQuery,
    };
