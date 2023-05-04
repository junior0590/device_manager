import '../utils/extensions/constants.dart';

abstract class DataState<T> {
  final T? data;
  final String? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T? data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(String? error) : super(error: error);
}

class GenericBlocState<T> {
  final T? data;
  final String? error;
  final DataStatus status;

  const GenericBlocState({this.data, this.error, required this.status});

  factory GenericBlocState.empty() =>
      const GenericBlocState(status: DataStatus.EMPTY);

  factory GenericBlocState.loading() =>
      const GenericBlocState(status: DataStatus.LOADING);

  factory GenericBlocState.failure(String error) =>
      GenericBlocState(error: error, status: DataStatus.ERROR);

  factory GenericBlocState.success(data) =>
      GenericBlocState(data: data, status: DataStatus.COMPLETED);
}
