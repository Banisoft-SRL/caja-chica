import 'package:caja_chica/main.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 0.0, bottom: 0.1),
              child: Image.asset(
                'assets/ING.jpg',
                height: 80,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[200],
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.add_home, size: 20),
                    Text(
                      ' Dashboard',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 9,
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[200],
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.sync, size: 20),
                    Text(
                      ' Sincronizar',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[200],
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.dashboard_customize_rounded, size: 20),
                    Text(
                      ' Detalles de factutas',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              onTap: () => {},
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.grey[200],
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.stacked_bar_chart, size: 20),
                    Text(
                      ' Estadisticas de desembolsos',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.grey[200],
              child: Row(
                children: const <Widget>[
                  Icon(Icons.settings_suggest, size: 23),
                  Text(
                    ' Ajustes',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.black,
              alignment: Alignment.center,
              child: const Text(
                'Sign out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
