import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/configs/app_theme.dart';
import 'package:portfolio/features/home/presentation/bloc/home_bloc.dart';
import 'package:portfolio/features/home/presentation/pages/home_pages.dart';
import 'package:portfolio/features/home/presentation/pages/side_pages.dart';
import 'package:portfolio/injection.dart';

void main() async {
  await initializeDependecies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()..add(GetInitialData()),
      child: MaterialApp(
        title: 'My Portfolio',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData(context),
        home: const HomePages(),
      ),
    );
  }
}
