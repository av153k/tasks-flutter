import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks/src/helpers/log_helper.dart';
import 'package:tasks/src/pages/drawer_page.dart';
import 'package:tasks/src/provider/app_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  _openDrawer() {
    _controller!.isDismissed ? _controller?.forward() : _controller?.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedBuilder(
        animation: _controller!,
        builder: (context, child) {
          double _slide =
              _controller!.value * (MediaQuery.of(context).size.width * 0.6);
          double _scale = 1 - (_controller!.value * 0.2);
          double _borderRadius = _controller!.value * 25;
          return Stack(
            children: [
              const DrawerPage(),
              Transform(
                transform: Matrix4.identity()
                  ..translate(_slide)
                  ..scale(_scale),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(_borderRadius),
                  child: GestureDetector(
                    onTap: _openDrawer,
                    child: Scaffold(
                      appBar: AppBar(
                        leading: IconButton(
                          icon: const Icon(EvaIcons.menu2Outline),
                          onPressed: _openDrawer,
                        ),
                        actions: [
                          IconButton(
                            icon: const Icon(EvaIcons.searchOutline),
                            onPressed: () {
                              LogHelper.log.info('Search Tapped');
                            },
                          ),
                          IconButton(
                            icon: const Icon(EvaIcons.bellOutline),
                            onPressed: () {
                              LogHelper.log.info('Notification Tapped');
                            },
                          ),
                        ],
                      ),
                      body: SafeArea(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                            ),
                            child: ListView(
                              children: [
                                Text(
                                  'Good Morning',
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
