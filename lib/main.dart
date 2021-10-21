import 'package:flutter/material.dart';
import 'package:flutter_solid/design_patterns/flyweight/presentation/users_page.dart';
import 'package:flutter_solid/design_patterns/memento/view/shapes_page_view.dart';
import 'package:flutter_solid/design_patterns/prototype/prototype_page.dart';
import 'package:flutter_solid/design_patterns/proxy/video_page.dart';

void main() {
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
        home:
            MementoShapePageView() //UserList() //VideoServicePage() //AuthPage(),
        );
  }
}
