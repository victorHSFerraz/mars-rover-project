import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mars_rover_project/core/database/database.dart';
import 'package:mars_rover_project/core/network/http.dart';
import 'package:mars_rover_project/core/network/network_info.dart';
import 'package:mars_rover_project/modules/home/data/datasources/home_local_source.dart';
import 'package:mars_rover_project/modules/home/data/datasources/home_remote_source.dart';
import 'package:mars_rover_project/modules/home/data/repositories/home_repository.dart';
import 'package:mars_rover_project/modules/home/domain/repositories/home_repository.dart';
import 'package:mars_rover_project/modules/home/domain/usecases/fetch_data.dart';
import 'package:mars_rover_project/modules/home/domain/usecases/get_data.dart';
import 'package:mars_rover_project/modules/home/domain/usecases/save_data.dart';
import 'package:mars_rover_project/modules/home/presentation/controller/home_controller.dart';
import 'package:mars_rover_project/modules/splash/presentation/controller/splash_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  //! Controllers
  Get.lazyPut(() => SplashController());
  Get.lazyPut(
      () => HomeController(
            fetchData: Get.find(),
            saveData: Get.find(),
            getData: Get.find(),
          ),
      fenix: true);

  //! Use cases
  Get.lazyPut(() => FetchData(Get.find()), fenix: true);
  Get.lazyPut(() => SaveData(Get.find()), fenix: true);
  Get.lazyPut(() => GetData(Get.find()), fenix: true);

  //! Repositories
  Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl(remoteDataSource: Get.find(), localSource: Get.find()),
      fenix: true);

  //! Datasources
  Get.lazyPut<HomeRemoteSource>(() => HomeRemoteSourceImpl(http: Get.find()), fenix: true);
  Get.lazyPut<HomeLocalSource>(() => HomeLocalSourceImpl(database: Get.find()), fenix: true);

  //! Core
  Get.lazyPut(() => Database());
  Get.lazyPut<NetworkInfo>(() => NetworkInfoImpl(connectivity: Get.find()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => Http(BaseOptions()));
  Get.lazyPut(() => Connectivity());
}
