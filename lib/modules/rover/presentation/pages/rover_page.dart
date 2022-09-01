import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_rover_project/core/utils/scroll.dart';
import 'package:mars_rover_project/modules/home/presentation/controller/home_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RoverPage extends StatefulWidget {
  const RoverPage({Key? key}) : super(key: key);

  @override
  State<RoverPage> createState() => _RoverPageState();
}

class _RoverPageState extends State<RoverPage> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://mars.nasa.gov/gltf_embed/24584",
        gestureRecognizers: {
          Factory(() => PlatformViewVerticalGestureRecognizer()),
        },
      ),
    );
  }
}
