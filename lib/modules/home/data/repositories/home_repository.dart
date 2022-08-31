import 'package:dartz/dartz.dart';
import 'package:mars_rover_project/core/error/exceptions.dart';
import 'package:mars_rover_project/core/error/failures.dart';
import 'package:mars_rover_project/modules/home/data/datasources/home_remote_source.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';
import 'package:mars_rover_project/modules/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRemoteSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, RoverInformation>>? fetchData(String roverName) async {
    try {
      final response = await remoteDataSource.fetchData(roverName);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
