import 'package:flutter/material.dart';

class OnLoadingWidget extends StatelessWidget {
  const OnLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
