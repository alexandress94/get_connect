import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_connect/app/modules/initial/initial_controller.dart';
import 'package:get_connect/app/modules/initial/local_widget/on_error_widget.dart';
import 'package:get_connect/app/modules/initial/local_widget/on_loading_widget.dart';

import 'local_widget/success_widget.dart';

class InitialPage extends GetView<InitialController> {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => SuccessWidget(
          state: state!,
        ),
        onError: (error) => OnErrorWidget(),
        onLoading: OnLoadingWidget(),
      ),
    );
  }
}
