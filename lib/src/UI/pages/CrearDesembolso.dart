import 'package:flutter/material.dart';

class CrearDesembolso extends StatelessWidget {
  const CrearDesembolso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(children: const [
          SizedBox(
            width: 10,
            height: 20,
          ),
          CircleAvatar(
            backgroundColor: Color.fromRGBO(255, 210, 101, 600),
            radius: 17,
            child: Icon(
              Icons.create,
              size: 20,
              color: Colors.orange,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'Crear Desembolso',
            style: TextStyle(color: Colors.black),
          )
        ]),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.expand_more_rounded,
            size: 40,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: null,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Beneficiario'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Cedula/RNC'),
                    prefixIcon: Icon(Icons.perm_identity_sharp),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Categoria'),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Concepto de gasto'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Estado'),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('NCF'),
                    prefixIcon: Icon(Icons.receipt_long_rounded),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Monto'),
                        prefixIcon: Icon(Icons.monetization_on_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Impuestos'),
                        prefixIcon: Icon(Icons.money_off_sharp),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Proyecto'),
                    prefixIcon: Icon(Icons.account_tree_outlined),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Concepto'),
                        prefixIcon: Icon(Icons.perm_identity),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Referencia'),
                        prefixIcon: Icon(Icons.edit_note),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              FloatingActionButton.extended(
                  onPressed: () => Navigator.pop(context),
                  label: const Text('Guardar'),
                  backgroundColor: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
