import 'package:tasks/src/services/snackbar_service.dart';

class AppHelpers {
  static String apiBaseUrl = 'http://127.0.0.1:8000/api/v0/';
  static String appName = 'Tasks';

  static void showSnackbar(String? message){
    SnackbarService.service.showTextSnackbar(message: message);
  }
}
