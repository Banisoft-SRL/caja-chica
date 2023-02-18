class ApiResponse<T> {
  final T? data;
  final List<dynamic>? message;
  final int? statusCode;
  final bool? isSuccess;
  ApiResponse({this.data, this.message, this.statusCode, this.isSuccess});

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, Function fromJsonModel,
      {Function? fromJsonModelList}) {
    T? dataSerialized;

    if (json["data"] is Iterable) {
      dataSerialized = fromJsonModelList!(json['data']) as T;
    } else {
      dataSerialized = json['data'] != null
          ? fromJsonModel(json['data'] as Map<String, dynamic>)
          : null;
    }
    return ApiResponse(
      data: dataSerialized,
      message: json['message'],
      statusCode: json['statusCode'],
      isSuccess: json['isSuccess'],
    );
  }
}
