library block_ui;

import 'package:flutter/material.dart';

class BlockUi {
  static const Widget _centerWidget = CircularProgressIndicator();
  static const Color _backgroundColor = Colors.transparent;
  static const Widget _backgroundWidget = CircularProgressIndicator(
    color: Colors.transparent,
    backgroundColor: Colors.transparent,
  );
  static void show(
    BuildContext context, {
    Widget child = _centerWidget,
    Color backgroundColor = _backgroundColor,
    Widget backgroundWidget = _backgroundWidget,
  }) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: Container(
                color: backgroundColor,
                child: Stack(
                  children: [
                    backgroundWidget,
                    Center(
                      child: Material(
                        color: Colors.transparent,
                        child: child,
                      ),
                    ),
                  ],
                )),
          );
        },
      );
    });
  }

  static void hide(BuildContext context) {
    Navigator?.of(context).pop();
  }
}
