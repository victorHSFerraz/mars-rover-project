import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rover_project/modules/home/presentation/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (controller.loading.value) {
            return const CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: (context, index) {
                return Obx(() {
                  if (controller.list[index].photoManifest != null) {
                    return SizedBox(
                      child: Text(
                        controller.list[index].photoManifest!.name ?? "",
                      ),
                    );
                  } else {
                    return Container();
                  }
                });
              },
            );
          }
        },
      ),
    );
  }
}
