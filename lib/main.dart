import 'package:flutter/material.dart';
import 'package:world_api/home.dart';

void main() {
  runApp( Api());
}
class Api extends StatelessWidget {
  const Api({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:Weather(),

    );
  }
}

