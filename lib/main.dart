import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'bloc_observer.dart';
import 'home_view.dart';

void main() {
  BlocOverrides.runZoned(() {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView());
  }
}
