import 'package:dartz/dartz.dart';
import 'package:mars_rover_project/core/error/failures.dart';
import 'package:mars_rover_project/core/usecases/usecases.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';
import 'package:mars_rover_project/modules/home/domain/repositories/home_repository.dart';

class SaveData implements UseCase<bool, RoverInformation> {
  final HomeRepository repository;

  SaveData(this.repository);

  @override
  Future<Either<Failure, bool>?> call(RoverInformation roverName) async {
    return repository.saveData(roverName)!;
  }
}
