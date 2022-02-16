import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/app/drawer/view_model.dart';
import 'package:tasks/src/helpers/size_config.dart';

class DrawerPage extends ConsumerWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _drawerProvider = ref.watch(drawerViewModelProvider);
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
                style: Theme.of(context).textTheme.headline3
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
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: SizeConfig.screenHeight! * 0.02,
                      color: Theme.of(context).iconTheme.color,
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
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    CupertinoSwitch(
                      value: _drawerProvider.isDark,
                      onChanged: ref.read(drawerViewModelProvider).changeTheme,
                      activeColor: Theme.of(context).iconTheme.color,
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
