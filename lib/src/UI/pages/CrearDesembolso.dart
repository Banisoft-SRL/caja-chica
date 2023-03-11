import 'package:caja_chica/src/UI/blocs/crear_desembolso/crear_desembolso_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../widgets/widgets.dart';

class CrearDesembolso extends StatefulWidget {
  const CrearDesembolso({Key? key}) : super(key: key);

  @override
  State<CrearDesembolso> createState() => _CrearDesembolsoState();
}

class _CrearDesembolsoState extends State<CrearDesembolso> {
  late final TextEditingController _beneficiarioController;
  late final CrearDesembolsoBloc _crearDesembolsoBloc;
  @override
  void initState() {
    _crearDesembolsoBloc = context.read<CrearDesembolsoBloc>();
    _beneficiarioController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Formatter = MaskTextInputFormatter(
        mask: 'B## ########', filter: {"#": RegExp(r'[0-9]')});

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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.date_range_outlined),
                          Text(
                            'Fecha',
                            style: TextStyle(color: Colors.black38),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BeneficiarioInput(crearDesembolsoBloc: _crearDesembolsoBloc),
              RncInput(crearDesembolsoBloc: _crearDesembolsoBloc),
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
                    width: MediaQuery.of(context).size.width * 0.44,
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
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Estado'),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [Formatter],
                  decoration: const InputDecoration(
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
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: const TextField(
                      keyboardType: TextInputType.number,
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
                    width: MediaQuery.of(context).size.width * 0.44,
                    child: const TextField(
                      keyboardType: TextInputType.number,
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
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Referencia'),
                        prefixIcon: Icon(Icons.edit_note),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
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
