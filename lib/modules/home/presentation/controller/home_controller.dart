import 'dart:developer';

import 'package:get/get.dart';
import 'package:mars_rover_project/core/usecases/usecases.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';
import 'package:mars_rover_project/modules/home/domain/usecases/fetch_data.dart';
import 'package:mars_rover_project/modules/home/domain/usecases/get_data.dart';
import 'package:mars_rover_project/modules/home/domain/usecases/save_data.dart';

class HomeController extends GetxController {
  final FetchData fetchData;
  final SaveData saveData;
  final GetData getData;
  HomeController({
    required this.fetchData,
    required this.saveData,
    required this.getData,
  });

  @override
  void onInit() {
    checkData();
    super.onInit();
  }

  RxBool loading = false.obs;
  RoverInformation roverInformation = RoverInformation();
  List<RoverInformation> list = [];

  Future<void> checkData() async {
    loading.value = true;
    try {
      final hasData = await getFromDatabase();
      if (hasData) {
        return;
      } else {
        await getDataFromRemote().then((value) async {
          if (value) {
            await getFromDatabase();
          }
        });
      }
    } finally {
      loading.value = false;
    }
  }

  Future<bool> getDataFromRemote() async {
    bool status = false;

    try {
      final response = await fetchData("Curiosity");
      final decodedResponse = response!.fold((error) => error, (val) => val);
      if (decodedResponse is RoverInformation) {
        await saveOnDatabase(decodedResponse);
        status = true;
      } else {
        log('error');
      }
    } catch (e) {
      log(e.toString());
    }
    return status;
  }

  Future<void> saveOnDatabase(RoverInformation roverInformation) async {
    try {
      final response = await saveData(roverInformation);
      final decodedResponse = response!.fold((error) => error, (val) => val);
      if (decodedResponse is bool) {
        log('success');
      } else {
        log('error');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<bool> getFromDatabase() async {
    bool status = false;

    try {
      final response = await getData(NoParams());
      final decodedResponse = response!.fold((error) => error, (val) => val);
      if (decodedResponse is List<RoverInformation>) {
        if (decodedResponse.isNotEmpty) {
          list.addAll(decodedResponse);
          status = true;
        }
      } else {
        log('error');
      }
    } catch (e) {
      log(e.toString());
    }
    return status;
  }
}
