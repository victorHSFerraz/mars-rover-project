import 'package:dartz/dartz.dart';
import 'package:mars_rover_project/core/error/failures.dart';
import 'package:mars_rover_project/core/usecases/usecases.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';
import 'package:mars_rover_project/modules/home/domain/repositories/home_repository.dart';

class GetData implements UseCase<List<RoverInformation>, NoParams> {
  final HomeRepository repository;

  GetData(this.repository);

  @override
  Future<Either<Failure, List<RoverInformation>>?> call(NoParams noParams) async {
    return repository.getData()!;
  }
}
