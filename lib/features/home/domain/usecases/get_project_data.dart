import 'package:dartz/dartz.dart';
import 'package:portfolio/core/failure/server_failure.dart';
import 'package:portfolio/features/home/domain/entities/project_entites.dart';
import 'package:portfolio/features/home/domain/repositories/portfolio_repository.dart';

class GetProjectData {
  final PortfolioRepository _portfolioRepository;

  GetProjectData(this._portfolioRepository);

  Future<Either<ServerFailure, List<ProjectEntites>>> call() async {
    return _portfolioRepository.getProjectData();
  }
}
