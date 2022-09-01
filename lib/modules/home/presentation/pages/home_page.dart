import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rover_project/modules/home/presentation/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const SizedBox(
            child: Text(
              "Curiosity Rover",
            ),
          );
        },
      ),
    );
  }
}
