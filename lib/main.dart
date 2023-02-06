import 'package:caja_chica/src/UI/Data_Grid.dart';
import 'package:caja_chica/src/UI/widgets/Drawer.dart';
import 'package:caja_chica/src/UI/widgets/Transactions_list_2.dart';
import 'package:flutter/material.dart';

void Login() => runApp(MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      title: 'Menu',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          primaryColor: Colors.black,
          accentColor: Colors.black87),
    ));

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        height: 40,
        color: Colors.white,
        child: Row(
          children: const [
            Text(
              'Desarrollado por BaniSoft SRL',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Icon(
              Icons.copyright,
              color: Colors.grey,
              size: 14,
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.settings)),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.blueGrey,
                Colors.white70,
              ],
            )),
            height: 320,
            child: Image.asset(
              'assets/Bs.png',
              width: 100,
            ),
          ),
          Center(
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              margin: const EdgeInsets.only(left: 20, right: 20, top: 63),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'Welcome to the Caja Chica App',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.account_circle_rounded),
                          labelText: 'USERNAME'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: 'PASSWORD',
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          )),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    MaterialButton(
                      onPressed: () => main(),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      color: Theme.of(context).primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showRegister(BuildContext context) {
    Navigator.of(context).pushNamed('/register');
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isScrolled = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Desembolsos'),
        centerTitle: true,
        actions: [
          const Icon(Icons.calendar_month),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        children: const [
                          Text('Mostar Todas'),
                          Spacer(),
                          Icon(
                            Icons.filter_list_sharp,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: const [
                          Text('Registrado'),
                          Spacer(),
                          Icon(
                            Icons.app_registration,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: const [
                          Text('Enviado'),
                          Spacer(),
                          Icon(
                            Icons.send,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: const [
                          Text('Anulado'),
                          Spacer(),
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ])
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  '  Balance disponible:',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.monetization_on),
                      Text(
                        '1,000,000.00',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 15,
              width: 10,
            ),

            Row(
              children: [
                const Text(
                  '  Filtrar:',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.date_range_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          ' 25/1/2023',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.date_range_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        ' 25/1/2023',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: const [Icon(Icons.search), Text(' Search')],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //Espacio de color gris donde estaran los datos de la facturas

            Expanded(
              flex: 20,
              child: Container(
                padding: const EdgeInsets.only(top: 9, left: 0, right: 0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: ListView(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 2,
                      right: 2,
                    ),
                    children: const <Widget>[
                      TransactionsList(),
                      TransactionsListdos(),
                      TransactionsList(),
                      TransactionsListdos(),
                      TransactionsList(),
                      TransactionsListdos(),
                      TransactionsList(),
                      TransactionsList(),
                      TransactionsListdos(),
                      TransactionsList(),
                      TransactionsList(),
                      TransactionsListdos(),
                      TransactionsList(),
                      TransactionsList(),
                    ]),
              ),
            )
          ],
        ),
      ),

      //Boton de la esquina inferior derecha de crear factura .

      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Login(),
          isExtended: isScrolled,
          label: const Text('Crear factura'),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.black),

      //DRAWER = Menu donde estan las opsiones (Inicio, Facturas, Balance_disponible, Sincronizar, Ajustes.)

      drawer: const DrawerList(),
    ));
  }
}
