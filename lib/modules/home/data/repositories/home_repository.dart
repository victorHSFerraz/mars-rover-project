import 'package:dartz/dartz.dart';
import 'package:mars_rover_project/core/error/exceptions.dart';
import 'package:mars_rover_project/core/error/failures.dart';
import 'package:mars_rover_project/modules/home/data/datasources/home_local_source.dart';
import 'package:mars_rover_project/modules/home/data/datasources/home_remote_source.dart';
import 'package:mars_rover_project/modules/home/data/model/rover_information.dart';
import 'package:mars_rover_project/modules/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRemoteSource remoteDataSource;
  HomeLocalSource localSource;

  HomeRepositoryImpl({required this.remoteDataSource, required this.localSource});

  @override
  Future<Either<Failure, RoverInformation>>? fetchData(String roverName) async {
    try {
      final response = await remoteDataSource.fetchData(roverName);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>>? saveData(RoverInformation roverInformation) async {
    try {
      final response = await localSource.saveRoverInfo(roverInformation: roverInformation);
      return Right(response);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<RoverInformation>>>? getData() async {
    try {
      final response = await localSource.getRoverInfo();
      return Right(response);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
