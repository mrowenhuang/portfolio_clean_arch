import 'package:dartz/dartz.dart';
import 'package:portfolio/core/failure/server_failure.dart';
import 'package:portfolio/features/home/data/datasources/local/data.dart';
import 'package:portfolio/features/home/data/models/project_model.dart';
import 'package:portfolio/features/home/domain/entities/project_entites.dart';
import 'package:portfolio/features/home/domain/repositories/portfolio_repository.dart';

class RepositoryImpl extends PortfolioRepository {
  final Data _data;

  RepositoryImpl(this._data);
  @override
  Future<Either<ServerFailure, List<ProjectEntites>>> getProjectData() async {
    try {
      List<ProjectEntites> response =
          _data.data.map((e) => ProjectModel.fromMap(e)).toList();

      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
