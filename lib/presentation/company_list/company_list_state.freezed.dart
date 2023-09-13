// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyListState _$CompanyListStateFromJson(Map<String, dynamic> json) {
  return _CompanyListState.fromJson(json);
}

/// @nodoc
mixin _$CompanyListState {
  List<CompanyList> get companyList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyListStateCopyWith<CompanyListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListStateCopyWith<$Res> {
  factory $CompanyListStateCopyWith(
          CompanyListState value, $Res Function(CompanyListState) then) =
      _$CompanyListStateCopyWithImpl<$Res, CompanyListState>;
  @useResult
  $Res call(
      {List<CompanyList> companyList,
      bool isLoading,
      bool isRefreshing,
      String searchQuery});
}

/// @nodoc
class _$CompanyListStateCopyWithImpl<$Res, $Val extends CompanyListState>
    implements $CompanyListStateCopyWith<$Res> {
  _$CompanyListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyList = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      companyList: null == companyList
          ? _value.companyList
          : companyList // ignore: cast_nullable_to_non_nullable
              as List<CompanyList>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyListStateCopyWith<$Res>
    implements $CompanyListStateCopyWith<$Res> {
  factory _$$_CompanyListStateCopyWith(
          _$_CompanyListState value, $Res Function(_$_CompanyListState) then) =
      __$$_CompanyListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CompanyList> companyList,
      bool isLoading,
      bool isRefreshing,
      String searchQuery});
}

/// @nodoc
class __$$_CompanyListStateCopyWithImpl<$Res>
    extends _$CompanyListStateCopyWithImpl<$Res, _$_CompanyListState>
    implements _$$_CompanyListStateCopyWith<$Res> {
  __$$_CompanyListStateCopyWithImpl(
      _$_CompanyListState _value, $Res Function(_$_CompanyListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyList = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? searchQuery = null,
  }) {
    return _then(_$_CompanyListState(
      companyList: null == companyList
          ? _value._companyList
          : companyList // ignore: cast_nullable_to_non_nullable
              as List<CompanyList>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyListState implements _CompanyListState {
  const _$_CompanyListState(
      {final List<CompanyList> companyList = const [],
      this.isLoading = false,
      this.isRefreshing = false,
      this.searchQuery = ''})
      : _companyList = companyList;

  factory _$_CompanyListState.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyListStateFromJson(json);

  final List<CompanyList> _companyList;
  @override
  @JsonKey()
  List<CompanyList> get companyList {
    if (_companyList is EqualUnmodifiableListView) return _companyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companyList);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString() {
    return 'CompanyListState(companyList: $companyList, isLoading: $isLoading, isRefreshing: $isRefreshing, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyListState &&
            const DeepCollectionEquality()
                .equals(other._companyList, _companyList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_companyList),
      isLoading,
      isRefreshing,
      searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyListStateCopyWith<_$_CompanyListState> get copyWith =>
      __$$_CompanyListStateCopyWithImpl<_$_CompanyListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyListStateToJson(
      this,
    );
  }
}

abstract class _CompanyListState implements CompanyListState {
  const factory _CompanyListState(
      {final List<CompanyList> companyList,
      final bool isLoading,
      final bool isRefreshing,
      final String searchQuery}) = _$_CompanyListState;

  factory _CompanyListState.fromJson(Map<String, dynamic> json) =
      _$_CompanyListState.fromJson;

  @override
  List<CompanyList> get companyList;
  @override
  bool get isLoading;
  @override
  bool get isRefreshing;
  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyListStateCopyWith<_$_CompanyListState> get copyWith =>
      throw _privateConstructorUsedError;
}
