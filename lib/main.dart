import 'package:app_park_pay_go/models/user_model.dart';
import 'package:app_park_pay_go/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
        title: 'PARK PAY GO',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Color.fromARGB(255, 10, 218, 206),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),

    );
  }
}

