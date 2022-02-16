import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final drawerViewModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => _DrawerViewModel(),
);

class _DrawerViewModel extends ChangeNotifier {
  ThemeMode? currentTheme = ThemeMode.dark;
  bool get isDark => currentTheme == ThemeMode.dark;
  changeTheme(bool value) {
    if (value) {
      currentTheme = ThemeMode.dark;
    } else {
      currentTheme = ThemeMode.light;
    }
    notifyListeners();
  }
}
