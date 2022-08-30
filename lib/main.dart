import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mars_rover_project/injection_container.dart' as di;
import 'package:mars_rover_project/modules/splash/presentation/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    GetMaterialApp(
      title: 'Mars Rover Project',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashPage(),
        ),
      ],
    ),
  );
}
