import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_connect/app/routes/app_pages.dart';
import 'package:get_connect/app/routes/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL_PAGE,
      getPages: AppPages.routes,
    ),
  );
}
