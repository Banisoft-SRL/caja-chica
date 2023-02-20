import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AjusteUsuario extends StatefulWidget {
  const AjusteUsuario({Key? key}) : super(key: key);

  @override
  State<AjusteUsuario> createState() => _AjusteUsuarioState();
}

class _AjusteUsuarioState extends State<AjusteUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(children: const [
          SizedBox(
            width: 60,
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(150, 243, 254, 600),
              radius: 17,
              child: Icon(
                Icons.settings_suggest,
                size: 20,
                color: Color.fromRGBO(100, 100, 99, 600),
              ),
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'Ajustes',
            style: TextStyle(color: Colors.black38),
          )
        ]),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.done,
            size: 36,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'DATOS DE CONEXION REQUERIDOS',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text("Hostname"),
                          Text(
                            ' (Requerido*)',
                            style: TextStyle(
                                color: Color.fromRGBO(251, 59, 59, 600)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                        height: 47,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('e.j  banisoft.dyndns.org'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text("Port"),
                          Text(
                            ' (Requerido*)',
                            style: TextStyle(
                                color: Color.fromRGBO(251, 59, 59, 600)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: 46.9,
                        child: const TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('e.j 8080'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Button de Probar la conexion.

              const SizedBox(
                height: 16,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {},
                color: Colors.green,
                child: const Text('Probar conexión',
                    style: TextStyle(color: Colors.white)),
              ),

              // Titulo de Compañía & Usuarios

              const SizedBox(
                height: 30,
              ),
              const Text(
                'Compañía & Usuarios',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),

              // Ajustes de Compañía & Usuarios

              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.corporate_fare),
                      Text(" Compañia"),
                      Text(
                        ' (Requerido*)',
                        style:
                            TextStyle(color: Color.fromRGBO(251, 59, 59, 600)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 46.9,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('e.j banisoft srl'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.account_tree_outlined),
                      Text("  Sucursal"),
                      Text(
                        ' (Requerido*)',
                        style:
                            TextStyle(color: Color.fromRGBO(251, 59, 59, 600)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 46.9,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('e.j Sucursal Principal'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.supervised_user_circle),
                      Text("  Usuario"),
                      Text(
                        ' (Requerido*)',
                        style:
                            TextStyle(color: Color.fromRGBO(251, 59, 59, 600)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 46.9,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('e.j Miguel Mateo'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
