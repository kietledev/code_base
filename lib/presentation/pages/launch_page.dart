import 'dart:async';

import 'package:code_base/common/constants/constants.dart';
import 'package:flutter/material.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(RouteConstants.login);
    });
    return Scaffold(
        appBar: AppBar(
          title: const Text('Launch'),
        ),
        body: Container());
  }
}
