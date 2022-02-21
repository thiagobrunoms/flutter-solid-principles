import 'dart:io' show Platform;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solid/fix-solid/page/auth_page_solid.dart';
// import 'package:flutter_solid/design_patterns/factory_method/view/card_list_page.dart';
// import 'package:flutter_solid/design_patterns/flyweight/presentation/users_page.dart';
// import 'package:flutter_solid/design_patterns/iterator_v2/page/delivery_page.dart';
// import 'package:flutter_solid/design_patterns/memento/view/shapes_page_view.dart';
// import 'package:flutter_solid/design_patterns/prototype/prototype_page.dart';
// import 'package:flutter_solid/design_patterns/proxy/video_page.dart';
// import 'package:flutter_solid/design_patterns/strategy/page/strategy_page.dart';
// import 'package:flutter_solid/design_patterns/template_method/page/employee_list_page.dart';
// import 'package:flutter_solid/fix-solid/page/auth_page_solid.dart';
// import 'package:flutter_solid/non-solid/page/auth_page.dart';

// import 'package:flutter_solid/solid/presentation/auth_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AuthPageSolid());
  }
}



//const EmployeeListPage() //DeliveryProcessPage(), //const StrategyPage(), //CardListPage(), //AuthPageSolid() //MementoShapePageView() //UserList() //VideoServicePage() //AuthPage(),