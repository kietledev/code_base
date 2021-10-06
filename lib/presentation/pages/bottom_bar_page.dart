import 'package:code_base/common/constants/text_constants.dart';
import 'package:code_base/common/helpers/helpers.dart';
import 'package:flutter/material.dart';

class BottomBarPage extends StatelessWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TitlesConstants.homeTitle,
          style: Utils.initTextStyle(color: Colors.black, size: 20),
        ),
      ),
      body: Container(),
    );
  }
}
