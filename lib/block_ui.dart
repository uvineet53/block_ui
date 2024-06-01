library block_ui;

import 'package:flutter/material.dart';

const Widget _defaultChild = CircularProgressIndicator();
const Color _defaultBackgroundColor = Colors.transparent;
const Widget _defaultBackgroundWidget = CircularProgressIndicator(
  color: Colors.transparent,
  backgroundColor: Colors.transparent,
);
 
class BlockUi {
  static void show(
    BuildContext context, {
    Widget child = _defaultChild,
    Color backgroundColor = _defaultBackgroundColor,
    Widget backgroundWidget = _defaultBackgroundWidget,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext buildContext) {
        return PopScope(
          onPopInvoked: (bool? value) => Future.value(false),
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
            ),
          ),
        );
      },
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context).pop();
  }
}
