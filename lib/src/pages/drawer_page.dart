import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/helpers/size_config.dart';
import 'package:tasks/src/provider/app_provider.dart';

class DrawerPage extends ConsumerWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appProvider = ref.watch(appProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth! * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              Text(
                'Tasks',
                style: TextStyle(
                  fontSize: SizeConfig.screenHeight! * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.01,
              ),
              Container(
                height: 80,
                width: 80,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Theme.of(context).dividerColor,
                    ],
                  ),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    'https://static.dev.page/giegMQowrD8isiOmLXkwF/d05845d26a4e03f35f42918c2ace10f8',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'App Info',
                      style: TextStyle(
                        fontSize: SizeConfig.screenHeight! * 0.02,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: SizeConfig.screenHeight! * 0.02,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Dark Theme',
                      style: TextStyle(
                        fontSize: SizeConfig.screenHeight! * 0.02,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                    CupertinoSwitch(
                      value: _appProvider.isDarkMode,
                      onChanged: ref.read(appProvider).toggleTheme,
                      activeColor: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
