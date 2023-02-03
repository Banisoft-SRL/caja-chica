import 'package:flutter/material.dart';



void Login()=>runApp(MaterialApp(
  initialRoute: '/',
  home: LoginPage(), title: 'Menu',
  theme: ThemeData(primarySwatch: Colors.blue,
      brightness: Brightness.light,
      primaryColor: Colors.black,
      accentColor: Colors.black87),
));




class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key:  key);
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        height: 40,
        color: Colors.white,
        child: Row(
          children: const [ Text('Desarrollado por BaniSoft SRL',
            style: TextStyle(fontSize: 15,color: Colors.grey), ),
            Icon(Icons.copyright, color: Colors.grey,)
          ],
        ),
      ),

      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, leading: const Icon(Icons.settings)),
      body: Stack(
        children: [Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration:  const BoxDecoration(
              gradient:  LinearGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.white70,
                ],
              )
          ),
          height: 320,
          child: Image.network('https://lh3.googleusercontent.com/w1akPpokauimNexy0tMH6ObhCXeUIpMQpNH6aKXNMWF723A5cyJrp2ga6zFr0PAprwTLo5UJljuLds9f4FsvaoXshCN19Zid2-Bj-gYY1hUyz12u5ggNr_6EPMbRZrADXdsVIKPmjLiSVnbnGdjWJ41cWLi-jdvaRQ7aUWSHVe_uzoHwHOoI9koKkJK61c8eXHSFOrnbq4h4ULJ5p5sEtm2onFlymFmewbRSJjNIFpv9OijA_psmaosn_576u7e6nQPRWkiqZuzssRM96NY0bsnpctjl-_DDGVBFZMB9D5X8XbBJ_u8kDTAI3rnDa0MZSV_ByZn5OzLsNgdlTClO5JywAmaNe2GZTMVn-pcZm9wKpotiNWXmnhGXDiuizX6Z9PfOcNkV9Vw_9crIqRvm_GjMJqF5sQj2oxCUYeKDCkzXXnAjo7k0QB4sHRH2oFYYO2y3qhqJxQekBeoLLHvtCSqsXSIRFt07zh9Xj3F5kZnC1T9royDdgHL-SzxHhx3YgMdqkcykAQQScmCtrRnxdHv2nQ2TEF9wC_rnlL9yjJE9A1GF1FQd2fEWjpYE75sJzuGgaSYXmuwwOcgRXd8O59xvrYDkHSKmS2tuAV0bVV5bJZ1sHNlb0MzyGyXcC6hVFtU2qxUET56043476UeU-2MloBnmndDzrtCSe9OsSicQhmoSBlHreEJgSLQ8tVAd0DqWyAuj1FrSeaXrtc2MLFetQGJYL3MM6FCtreiILUT_gn-A9SkVbJo6yrxmfjuTU3sf7z7JUAfeDxWp7txvgwB0d3WNWdID5hC_Kme75I2gui_G0KzJYOPWQ6vrWMDmYuOwYA_reqJUdh9Fvgs0R6dOCvx91YNRjubxk84EX7sYuP2qKOfApGGGfkbI0BvDjeXqF5oImVDw7aS6J_Cg2ECJ7EVovQIH2ULssdy6qps=w300-h70-no?authuser=0',),
        ),


          Center(child:
          Card( color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 63),
            child: Padding( padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('Welcome to the Caja Chica App', style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16),),
                  const Icon(Icons.inventory_outlined),
                  const SizedBox(height: 18,),
                  TextFormField(decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle_rounded),
                      labelText: 'USERNAME'
                  ),
                  ),
                  const SizedBox(height: 40,),
                  TextFormField(decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'PASSWORD', suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,)
                  ),
                    obscureText: true,
                  ),

                  const SizedBox(height: 43,),

                  MaterialButton(
                    onPressed:() =>main(),
                    padding: const EdgeInsets.symmetric(vertical: 15) ,
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[Text('LOGIn', style: TextStyle(color: Colors.white, fontSize: 18 ),
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
      theme: ThemeData(
      ),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, elevation: 0,
        title:  Image.network('https://scontent.fsdq2-1.fna.fbcdn.net/v/t39.30808-6/319433604_543461647399525_6446288797910578902_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=xGbuvVcW_fYAX91j2Iy&_nc_zt=23&_nc_ht=scontent.fsdq2-1.fna&oh=00_AfB9SVCJH0bfU_nmAlxn61mYNYueSO9b0OF9nnnZ62VDzw&oe=63D5FA47', width: 150,),
        centerTitle: true,
        actions: [ const Icon(Icons.calendar_month),

          PopupMenuButton(itemBuilder: (context) => [ PopupMenuItem(child: Row(children: const [ Text('Mostar Todas'), Spacer(),
            Icon(Icons.filter_list_sharp, color: Colors.black,
            ),
          ],
          ),
          ),

            PopupMenuItem(child: Row(children: const [Text('Registrado'), Spacer(),
              Icon(Icons.app_registration, color: Colors.black,
              ),
            ],
            ),
            ),

            PopupMenuItem(child: Row(children: const [Text('Enviado'), Spacer(),
              Icon(Icons.send, color: Colors.green,
              ),
            ],
            ),
            ),

            PopupMenuItem(child: Row(children: const [Text('Anulado'), Spacer(),
              Icon(Icons.cancel_outlined, color: Colors.red,
              ),
            ],
            ),
            ),
          ]
          )
        ],
      ),


      body:
      Center(child:
      Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ const SizedBox(height: 20,),
          Row(children: [
            const Text('  Balance disponible:',
          style: TextStyle(color: Colors.black54,
              fontSize: 17.0,
              fontWeight: FontWeight.bold),),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 18),
              decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20),),
              child: Row(children: const [
                Icon(Icons.monetization_on),
                Text('1,000,000.00', style: TextStyle(color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),), ],),
            ),],

        ),

          const SizedBox(height: 15, width: 10,),

          Row(children: [
            const Text('  Filtrar:', style: TextStyle(color: Colors.black54,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),),

            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: const [
                  Icon(Icons.date_range_outlined, color: Colors.white, ),
                  Text(' 25/1/2023', style: TextStyle(color: Colors.white),),
                ],
                )
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(20),),
              child: Row(children: const [
                Icon(Icons.date_range_outlined, color: Colors.white,),
                Text(' 25/1/2023', style: TextStyle(color: Colors.white),), ],),
            ),],
          ),

          const SizedBox(height: 10,),
          Container(margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20),),
            child: Row(children: const [Icon(Icons.search),
              Text(' Search')],),),
          const SizedBox(height: 20,),
          

          //Espacio de color gris donde estaran los datos de la facturas

          Expanded(flex: 20,

            child: Container(
               padding: EdgeInsets.only(top:   9,  left: 0, right: 0),
              decoration: BoxDecoration(color: Colors.grey[300],
                borderRadius:   BorderRadius.only(topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),

                ),

              ),



              child:
              ListView(
                  padding:  const EdgeInsets.only(top: 10, left: 2, right: 20,),
                  children: <Widget> [


              Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    Container(
                    
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 156),
                    decoration:  BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),),
                    ),
                    child: Row(children: const [
                      Icon(Icons.date_range_outlined, color: Colors.black87, ),
                      Text(' 25/1/2023', style: TextStyle(color: Colors.black87),),
                      SizedBox(height: 9,),

                    ],
                    ),
                  ),
                    SizedBox(height: 4,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 0),
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 157),
                      decoration: const BoxDecoration(color: Colors.white,
                      ),
                      child: Row(children: const [
                        Icon(Icons.date_range_outlined, color: Colors.black87, ),
                        Text(' 25/1/2023', style: TextStyle(color: Colors.black87),),
                        SizedBox(height: 9,),

                      ],
                      ),
                    ),
                    SizedBox(height: 4,),
                    Container(margin: const EdgeInsets.symmetric(horizontal: 0),
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 157),
                      decoration: const BoxDecoration(color: Colors.white,
                      ),
                      child: Row(children: const [
                        Icon(Icons.date_range_outlined, color: Colors.black87, ),
                        Text(' 25/1/2023', style: TextStyle(color: Colors.black87),),
                        SizedBox(height: 9,),

                      ],
                      ),
                    ),
                    SizedBox(height: 4,),
                    Container(margin: const EdgeInsets.symmetric(horizontal: 0),
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 157),
                      decoration: const BoxDecoration(color: Colors.white,
                      ),
                      child: Row(children: const [
                        Icon(Icons.date_range_outlined, color: Colors.black87, ),
                        Text(' 25/1/2023', style: TextStyle(color: Colors.black87),),
                        SizedBox(height: 9,),

                      ],
                      ),),
                      SizedBox(height: 4,),
                    Container(margin: const EdgeInsets.symmetric(horizontal: 0),
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 157),
                      decoration: const BoxDecoration(color: Colors.white,
                      ),
                      child: Row(children: const [
                        Icon(Icons.date_range_outlined, color: Colors.black87, ),
                        Text(' 25/1/2023', style: TextStyle(color: Colors.black87),),
                        SizedBox(height: 9,),

                      ],
                      ),),




                  ],)

                ],),
  ]
              ),
  ]

            ),

          ),
          )
        ],
      ),
      ),
      
      

      //Boton de la esquina inferior derecha de crear factura.

      floatingActionButton:
      FloatingActionButton.extended(
          onPressed: () => Login(),
          label: const Text('Crear factura'),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.black
      ),


      //DRAWER = Menu donde estan las opsiones (Inicio, Facturas, Balance_disponible, Sincronizar, Ajustes.)

      drawer:  const Drawer(),


    );
  }
}


