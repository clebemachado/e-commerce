// ignore_for_file: constant_identifier_names

enum Status { INITIAL, LOADING, COMPLETED, ERROR }

class ApiResponse<T> {

  Status status;
  T? data;
  String? message;

  ApiResponse.initial(this.message) : status = Status.INITIAL;
  ApiResponse.loading(this.message) : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;
  
}
