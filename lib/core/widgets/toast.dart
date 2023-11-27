import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showSuccessToast({
  required BuildContext context,
  required String title,
  required String text,
  Duration duration = const Duration(seconds: 3),
}) {
  // This is a hack to prevent the toast from showing during tests
  if (Platform.environment.containsKey('FLUTTER_TEST')) {
    return;
  }
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    title: title,
    message: text,
    titleSize: 21,
    messageSize: 16,
    duration: duration,
    leftBarIndicatorColor: Colors.greenAccent,
    icon: const Icon(
      Icons.check,
      color: Colors.white,
    ),
  ).show(context);
}

void showErrorToast({
  required BuildContext context,
  required String title,
  required String text,
  Duration duration = const Duration(seconds: 3),
  String? reason,
}) {
  // This is a hack to prevent the toast from showing during tests
  if (Platform.environment.containsKey('FLUTTER_TEST')) {
    return;
  }
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    title: title,
    message: text,
    titleSize: 21,
    messageSize: 16,
    duration: duration,
    backgroundColor: Colors.redAccent,
    icon: const Icon(
      Icons.error,
      color: Colors.white,
    ),
  ).show(context);
}
