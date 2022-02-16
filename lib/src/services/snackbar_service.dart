import 'dart:developer';

import 'package:flutter/material.dart';

class SnackbarService {
  SnackbarService._();

  static BuildContext? _context;
  static GlobalKey<ScaffoldMessengerState>? _scaffoldKey;
  static final SnackbarService _services = SnackbarService._();

  static SnackbarService get service => _services;

  GlobalKey<ScaffoldMessengerState>? get key => _scaffoldKey;

  initialize(BuildContext context, GlobalKey<ScaffoldMessengerState> key) {
   _scaffoldKey = key;
   _context = context;
    log('Scaffold Messenger key debug label ---- ${_scaffoldKey.toString()}');
  }

  showTextSnackbar({String? message}) {
    _scaffoldKey?.currentState?.showSnackBar(
      SnackBar(
        elevation: 40,
        duration: const Duration(milliseconds: 500),
        backgroundColor: Colors.transparent,
        behavior: SnackBarBehavior.floating,
        content: Container(
          decoration: BoxDecoration(
            color: Theme.of(_context!).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(50),
          ),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              message!,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
