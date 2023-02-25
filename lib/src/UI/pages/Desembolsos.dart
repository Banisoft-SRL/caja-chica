import 'package:caja_chica/src/UI/pages/CrearDesembolso.dart';
import 'package:caja_chica/src/UI/pages/Ajustes_usuario.dart';
import 'package:flutter/material.dart';
import '../TransactionsList.dart';

class ListadoDesembolso extends StatefulWidget {
  const ListadoDesembolso({super.key});

  @override
  State<ListadoDesembolso> createState() => _ListadoDesembolsoState();
}

class _ListadoDesembolsoState extends State<ListadoDesembolso> {
  bool isScrolled = true;

  DateTimeRange? _selectedDateRange;

  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Guardar',
    );

    if (result != null) {
      print(result.start.toString());
      setState(() {
        _selectedDateRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text('Desembolsos'),
          centerTitle: false,
          actions: [
            const SizedBox(
              width: 10,
            ),
            IconButton(
                icon: const Icon(Icons.calendar_month), onPressed: _show),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () async {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AjusteUsuario()));
                },
                icon: const Icon(Icons.settings)),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Row(
                          children: const [
                            Text("Mostar Todas"),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.date_range_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            " ${_selectedDateRange?.start.toString().split(' ')[0]}",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white),
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
                      children: [
                        const Icon(
                          Icons.date_range_outlined,
                          color: Colors.white,
                        ),
                        Text(
                            " ${_selectedDateRange?.end.toString().split(' ')[0]}",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white))
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
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                  decoration: const BoxDecoration(
                    // color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
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
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
                        TransactionsList(),
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
            onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                    height: MediaQuery.of(context).size.height * 0.90,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                    ),
                    child: const CrearDesembolso(),
                  ),
                ),
            label: const Text('Crear desembolso'),
            icon: const Icon(Icons.add),
            backgroundColor: Colors.black),

        //DRAWER = Menu donde estan las opsiones (Inicio, Facturas, Balance_disponible, Sincronizar, Ajustes.)

        //drawer: const DrawerList(),
      ),
    );
  }
}
