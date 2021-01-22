import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

statusBarCustom(BuildContext context, Color color) {
  final statusBarHeitgh = MediaQuery.of(context).padding.top;
  return Container(
    height: statusBarHeitgh,
    color: color,
  );
}
