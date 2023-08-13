// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TestMaterialAppWidget extends StatelessWidget {
  Widget? home;

  TestMaterialAppWidget({super.key, this.home});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Test',
      home: home,
    );
  }
}
