import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/config/themes/theme.dart';
import 'package:tasks/src/helpers/size_config.dart';
import 'package:tasks/src/app/home/view.dart';
import 'package:tasks/src/provider/app_provider.dart';
import 'package:tasks/src/services/snackbar_service.dart';

/// The Widget that configures your application.
class MyApp extends ConsumerWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  static final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _provider = ref.watch(appProvider);
    return MaterialApp(
      title: 'Tasks',
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      home: Builder(builder: (context) {
        SizeConfig().init(context);
        SnackbarService.service.initialize(context, scaffoldMessengerKey!);
        return const HomePage();
      }),
    );
  }
}
