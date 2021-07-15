import 'package:flutter/material.dart';

import 'fabPage.dart';

void main() {
  runApp(Fab());
}

class Fab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E20),
        scaffoldBackgroundColor: Color(0xFF0A0E20),
      ),
      debugShowCheckedModeBanner: false,
      home: FabPage (),
    );
  }
}

