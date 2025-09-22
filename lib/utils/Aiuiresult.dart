class AiUiResult<T> {
  final T? data;
  final String? error;

  const AiUiResult._({this.data, this.error});

  factory AiUiResult.success(T data) => AiUiResult._(data: data);
  factory AiUiResult.failure(String error) => AiUiResult._(error: error);

  bool get isSuccess => data != null;
  bool get isFailure => error != null;
}
