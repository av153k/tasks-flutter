import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/helpers/log_helper.dart';
import 'package:tasks/src/services/database_service.dart';
import 'package:tasks/src/services/local_storage_service.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageServices.service.initialize();
  await DatabaseServices.service.initialize();
  LogHelper.log.initialize();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
