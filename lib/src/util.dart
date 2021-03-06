import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs

void postFrame(VoidCallback callback) {
  assert(callback != null);
  WidgetsBinding.instance.addPostFrameCallback((_) => callback());
}

T swapSign<T extends num>(T value) {
  return value.isNegative ? value.abs() : value * -1;
}

double toPrecision(double value, [int precision = 3]) {
  return double.parse(value.toStringAsFixed(precision));
}
