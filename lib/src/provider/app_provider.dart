import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/helpers/app_helpers.dart';
import 'package:tasks/src/helpers/log_helper.dart';

class AppProvider extends ChangeNotifier {
  bool isDarkMode = false;

  toggleTheme(bool? value) {
    LogHelper.log.info('Toggling theme - dark theme - $value');
    AppHelpers.showSnackbar('Dark theme ${value! ? 'enabled' : 'disabled'}');
    isDarkMode = value;
    notifyListeners();
  }
}

var appProvider = ChangeNotifierProvider((ref) => AppProvider());
