
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

// make it sealed class
@freezed
abstract class Result<T> with _$Result<T>{
  const factory Result.success(T data) = Success;
  const factory Result.error(Exception e) = Error;
}



// without Freezed
// abstract class Result<T> {
//   factory Result.success(T data) => Success(data);
//   factory Result.error(Exception e) => Error(e);
// }
//
// class Success<T> implements Result<T>{
//   final T data;
//
//   Success(this.data);
// }
//
// class Error<T> implements Result<T>{
//   final Exception e;
//
//   Error(this.e);
// }