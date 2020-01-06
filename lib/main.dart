import 'package:flutter/material.dart';
import 'package:form/Registration.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Registration(),
    );
  }
}
