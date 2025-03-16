import 'package:get_it/get_it.dart';
import 'package:portfolio/features/home/data/datasources/local/data.dart';
import 'package:portfolio/features/home/data/repositories/repository_impl.dart';
import 'package:portfolio/features/home/domain/repositories/portfolio_repository.dart';
import 'package:portfolio/features/home/domain/usecases/get_project_data.dart';
import 'package:portfolio/features/home/presentation/bloc/home_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependecies() async {
  // Bloc
  sl.registerFactory(() => HomeBloc(sl()));
  // repositories
  sl.registerLazySingleton<PortfolioRepository>(() => RepositoryImpl(sl()));
  // usecases
  sl.registerLazySingleton(() => GetProjectData(sl()));
  // data source
  sl.registerLazySingleton(() => Data());
}
