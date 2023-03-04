class AppError {
  final String message;

  AppError({this.message = "Unknown Error"});

  @override
  String toString() {
    return "APP ERROR: $message";
  }
}
