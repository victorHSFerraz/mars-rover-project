import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rover_project/modules/splash/presentation/controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  final SplashController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
