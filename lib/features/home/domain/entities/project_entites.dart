import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ProjectEntites extends Equatable {
  String? title;
  String? description;
  String? link;

  ProjectEntites({this.title, this.description, this.link});

  @override
  List<Object?> get props => [title, description, link];

}
