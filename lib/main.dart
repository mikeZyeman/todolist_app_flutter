import 'package:flutter/material.dart';
import 'pages/Home.page.dart';

import 'services/Todo.service.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Testify Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}

