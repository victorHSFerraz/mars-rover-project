import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mars_rover_project/core/utils/fadein_animation.dart';
import 'package:mars_rover_project/modules/splash/presentation/controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  final SplashController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/gifs/space.gif",
                gaplessPlayback: true,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: FadeAnimation(
                  1.5,
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black87,
                    ),
                    child: Lottie.asset('assets/animations/loading.json'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
