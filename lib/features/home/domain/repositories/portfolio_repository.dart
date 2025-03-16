import 'package:dartz/dartz.dart';
import 'package:portfolio/core/failure/server_failure.dart';
import 'package:portfolio/features/home/domain/entities/project_entites.dart';

abstract class PortfolioRepository {
  Future <Either<ServerFailure, List<ProjectEntites>>> getProjectData();
}
