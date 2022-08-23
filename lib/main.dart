import 'package:flutter/material.dart';
import 'package:usfa_v1/screens/users_home_page/user_page.dart';
import 'package:usfa_v1/utils/helpers/locator_helper.dart';

void main() {
  initializeLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Usfa',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: UserPage(),
    );
  }
}
