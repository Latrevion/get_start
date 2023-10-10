import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../routes/app_pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? priority;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
    return RouteSettings(name: AppRoutes.Login);
  }
}