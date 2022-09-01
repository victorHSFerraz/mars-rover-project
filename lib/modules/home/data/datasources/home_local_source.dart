import 'dart:developer';

import 'package:mars_rover_project/core/database/database.dart';
import 'package:mars_rover_project/core/error/exceptions.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';

abstract class HomeLocalSource {
  Future<bool> saveRoverInfo({required RoverInformation roverInformation});
  Future<List<RoverInformation>> getRoverInfo();
}

class HomeLocalSourceImpl implements HomeLocalSource {
  Database database;
  HomeLocalSourceImpl({required this.database});

  @override
  Future<bool> saveRoverInfo({required RoverInformation roverInformation}) async {
    try {
      if (roverInformation.photoManifest != null) {
        final data = await database.dbRoverInfoDAO.getItemsByName(roverInformation.photoManifest!.name);
        if (data.isEmpty) {
          await database.dbRoverInfoDAO.insertItem(
            DbRoverInfoData(
              name: roverInformation.photoManifest!.name,
              landing_date: roverInformation.photoManifest!.landingDate,
              launch_date: roverInformation.photoManifest!.launchDate,
              status: roverInformation.photoManifest!.status,
              max_sol: roverInformation.photoManifest!.maxSol,
              max_date: roverInformation.photoManifest!.maxDate,
              total_photos: roverInformation.photoManifest!.totalPhotos,
            ),
          );
        }
      }

      return true;
    } catch (e) {
      log(e.toString());
      throw CacheException();
    }
  }

  @override
  Future<List<RoverInformation>> getRoverInfo() async {
    try {
      final List<RoverInformation> items = [];
      final data = await database.dbRoverInfoDAO.getItems();
      for (final element in data) {
        items.add(
          RoverInformation(
            photoManifest: PhotoManifest(
              name: element.name,
              landingDate: element.landing_date,
              launchDate: element.launch_date,
              status: element.status,
              maxSol: element.max_sol,
              maxDate: element.max_date,
              totalPhotos: element.total_photos,
            ),
          ),
        );
      }

      return items;
    } catch (e) {
      log(e.toString());
      throw CacheException();
    }
  }
}
