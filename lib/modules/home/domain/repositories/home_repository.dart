import 'package:dartz/dartz.dart';
import 'package:mars_rover_project/core/error/failures.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';

abstract class HomeRepository {
  Future<Either<Failure, RoverInformation>>? fetchData(String roverName);
}
