import 'dart:developer';

import 'package:get/get.dart';
import 'package:mars_rover_project/core/usecases/usecases.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';
import 'package:mars_rover_project/modules/home/domain/usecases/fetch_data.dart';

class HomeController extends GetxController {
  final FetchData fetchData;
  HomeController({required this.fetchData});

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  RxBool loading = false.obs;

  Future<void> getData() async {
    loading.value = true;
    try {
      final response = await fetchData("Curiosity");
      final decodedResponse = response!.fold((error) => error, (val) => val);
      if (decodedResponse is RoverInformation) {
        log("success");
      } else {
        //TODO ver uma maneira melhor de tratar os erros
        log('executeLogin error');
      }
    } catch (e) {
      log(e.toString());
    } finally {
      loading.value = false;
    }
  }
}
