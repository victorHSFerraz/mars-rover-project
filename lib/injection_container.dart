import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:mars_rover_project/modules/home/presentation/controller/home_controller.dart';
import 'package:mars_rover_project/modules/splash/presentation/controller/splash_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  //! Controllers
  Get.lazyPut(() => SplashController());
  Get.lazyPut(() => HomeController());

  //! Use cases

  //! Repositories

  //! Datasources

  //! Core

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => Connectivity());
}
