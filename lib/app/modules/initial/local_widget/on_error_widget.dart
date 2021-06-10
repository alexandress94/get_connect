import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_connect/app/modules/initial/initial_controller.dart';
import 'package:get_connect/app/routes/routes.dart';

class OnErrorWidget extends StatelessWidget {
  const OnErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Falha na conexão!'),
          GetBuilder<InitialController>(builder: (controller) {
            return ElevatedButton.icon(
              onPressed: () {
                Get.offAllNamed(Routes.INITIAL_PAGE);
              },
              icon: Icon(Icons.wifi_off),
              label: Text(
                'Tentar novamente',
              ),
            );
          }),
        ],
      ),
    );
  }
}
