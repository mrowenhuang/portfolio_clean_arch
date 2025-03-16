import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/home/domain/entities/project_entites.dart';
import 'package:portfolio/features/home/domain/usecases/get_project_data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetProjectData _getProjectData;

  HomeBloc(this._getProjectData) : super(HomeInitial()) {
    on<GetInitialData>(getInitialData);
  }

  FutureOr<void> getInitialData(
    GetInitialData event,
    Emitter<HomeState> emit,
  ) async {
    emit(LoadingGetHomeInitialProject());
    final respone = await _getProjectData.call();

    respone.fold(
      (l) {
        return emit(FailedGetHomeInitialProject(l.message));
      },
      (r) {
        return emit(SuccessGetHomeInitialProject(r));
      },
    );
  }
}
