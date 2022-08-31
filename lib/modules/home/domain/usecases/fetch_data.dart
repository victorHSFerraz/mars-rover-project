import 'package:dartz/dartz.dart';
import 'package:mars_rover_project/core/error/failures.dart';
import 'package:mars_rover_project/core/usecases/usecases.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';
import 'package:mars_rover_project/modules/home/domain/repositories/home_repository.dart';

class FetchData implements UseCase<RoverInformation, String> {
  final HomeRepository repository;

  FetchData(this.repository);

  @override
  Future<Either<Failure, RoverInformation>?> call(String roverName) async {
    return repository.fetchData(roverName)!;
  }
}
