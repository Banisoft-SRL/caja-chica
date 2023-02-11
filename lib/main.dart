import 'package:caja_chica/src/UI/pages/Login.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CajaChicaApp());

class CajaChicaApp extends StatelessWidget {
  const CajaChicaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Caja Chica',
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
