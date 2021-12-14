import 'package:buyeasy/pages/adiitonaldetails.dart';
import 'package:buyeasy/pages/catalogue.dart';
import 'package:buyeasy/pages/dukaanpremium.dart';
import 'package:buyeasy/pages/managestore.dart';
import 'package:buyeasy/pages/orderdetails.dart';
import 'package:buyeasy/pages/payments.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
debugShowCheckedModeBanner: false,
      home: ManageStore(),
    );
  }
}

