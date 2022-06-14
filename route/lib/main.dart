import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route/src/home.dart';
import 'package:route/src/pages/named/first.dart';
import 'package:route/src/pages/named/second.dart';
import 'package:route/src/pages/next.dart';
import 'package:route/src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      // routes: {
      //   "/" : (context) => Home(),
      //   "/first" : (context) => FirstNamedPage(),
      //   "/second" : (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name: "/", page: ()=> Home(), transition: Transition.zoom),
        GetPage(name: "/first", page: ()=> FirstNamedPage(), transition: Transition.zoom),
        GetPage(name: "/second", page: ()=> SecondNamedPage(), transition: Transition.zoom),
        GetPage(name: "/next", page: ()=> NextPage(), transition: Transition.zoom),
        GetPage(name: "/user/:uid", page: ()=> UserPage(), transition: Transition.zoom),

      ],
    );
  }
}
