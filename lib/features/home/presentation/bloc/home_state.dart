part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class SuccessGetHomeInitialProject extends HomeState {
  final List<ProjectEntites> project;

  const SuccessGetHomeInitialProject(this.project);
}

final class FailedGetHomeInitialProject extends HomeState {
  final String message;

  const FailedGetHomeInitialProject(this.message);
}

final class LoadingGetHomeInitialProject extends HomeState {}
