import 'package:caja_chica/main.dart';
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
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  bool _loading = false;


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
                      children: const <Widget>[Text('LOGIN', style: TextStyle(color: Colors.white, fontSize: 18 ),
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

