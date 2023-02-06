import 'package:caja_chica/main.dart';
import 'package:flutter/material.dart';

void List() => runApp(MaterialApp());

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<LoginPage> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: const [Text('hola')],
        ),
      ),
    );
  }
}
