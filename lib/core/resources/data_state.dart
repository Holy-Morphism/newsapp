import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioError? error;
  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState {
  const DataFailed(DioError error) : super(error: error);
}