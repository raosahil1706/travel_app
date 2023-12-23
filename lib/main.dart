import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_logic.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/pages/Home_page.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/welcome_page.dart';

import 'pages/navpages/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "Travel App",
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
      primarySwatch: Colors.blue,
     ),
     home:BlocProvider<AppCubits>(
      create:(context)=>AppCubits(),
      child: AppCubitLogic(),
      ),
    );
  }
}
