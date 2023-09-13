// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_list_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyListAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(onSearchQueryChange value) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(onSearchQueryChange value)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(onSearchQueryChange value)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListActionCopyWith<$Res> {
  factory $CompanyListActionCopyWith(
          CompanyListAction value, $Res Function(CompanyListAction) then) =
      _$CompanyListActionCopyWithImpl<$Res, CompanyListAction>;
}

/// @nodoc
class _$CompanyListActionCopyWithImpl<$Res, $Val extends CompanyListAction>
    implements $CompanyListActionCopyWith<$Res> {
  _$CompanyListActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res>
    extends _$CompanyListActionCopyWithImpl<$Res, _$Refresh>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'CompanyListAction.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChange,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(onSearchQueryChange value) onSearchQueryChange,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(onSearchQueryChange value)? onSearchQueryChange,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(onSearchQueryChange value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements CompanyListAction {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$onSearchQueryChangeCopyWith<$Res> {
  factory _$$onSearchQueryChangeCopyWith(_$onSearchQueryChange value,
          $Res Function(_$onSearchQueryChange) then) =
      __$$onSearchQueryChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$onSearchQueryChangeCopyWithImpl<$Res>
    extends _$CompanyListActionCopyWithImpl<$Res, _$onSearchQueryChange>
    implements _$$onSearchQueryChangeCopyWith<$Res> {
  __$$onSearchQueryChangeCopyWithImpl(
      _$onSearchQueryChange _value, $Res Function(_$onSearchQueryChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$onSearchQueryChange(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onSearchQueryChange implements onSearchQueryChange {
  const _$onSearchQueryChange(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CompanyListAction.onSearchQueryChange(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSearchQueryChange &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onSearchQueryChangeCopyWith<_$onSearchQueryChange> get copyWith =>
      __$$onSearchQueryChangeCopyWithImpl<_$onSearchQueryChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) {
    return onSearchQueryChange(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(onSearchQueryChange value) onSearchQueryChange,
  }) {
    return onSearchQueryChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(onSearchQueryChange value)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(onSearchQueryChange value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(this);
    }
    return orElse();
  }
}

abstract class onSearchQueryChange implements CompanyListAction {
  const factory onSearchQueryChange(final String query) = _$onSearchQueryChange;

  String get query;
  @JsonKey(ignore: true)
  _$$onSearchQueryChangeCopyWith<_$onSearchQueryChange> get copyWith =>
      throw _privateConstructorUsedError;
}
