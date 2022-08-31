import 'package:mars_rover_project/core/error/exceptions.dart';
import 'package:mars_rover_project/core/network/http.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';

abstract class HomeRemoteSource {
  Future<RoverInformation> fetchData(String roverName);
}

class HomeRemoteSourceImpl implements HomeRemoteSource {
  late Http http;
  HomeRemoteSourceImpl({required this.http});

  @override
  Future<RoverInformation> fetchData(roverName) async {
    final response = await http.get('/manifests/$roverName?api_key=DEMO_KEY');
    if (response.statusCode == 200) {
      RoverInformation roverInformation = RoverInformation.fromJson(response.data);
      return roverInformation;
    } else {
      throw ServerException();
    }
  }
}
