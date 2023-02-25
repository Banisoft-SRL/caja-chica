import 'package:flutter/material.dart';

class DetalleDesembolso extends StatefulWidget {
  const DetalleDesembolso({Key? key}) : super(key: key);

  @override
  State<DetalleDesembolso> createState() => _DetalleDesembolsoState();
}

class _DetalleDesembolsoState extends State<DetalleDesembolso> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Card(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Text(
                  'Disbursement Details',
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Greze',
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  Icon(Icons.attach_money),
                  Text(
                    '1,000,000',
                    style: TextStyle(
                      fontSize: 38.5,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Text('EXPENSES'),
                      SizedBox(
                        width: 25,
                      ),
                      Text('ADD IMAGE'),
                      SizedBox(
                        width: 25,
                      ),
                      Text('SEE CHARTS'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: const [
                  Text(
                    ' Pago de materiales',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(right: 130),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 17,
                        child: Icon(
                          Icons.date_range_sharp,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(' Fecha:'),
                      Text(
                        ' 5 febrero 2023',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(right: 138),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 17,
                        child: Icon(
                          Icons.perm_identity,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(' NCF: '),
                      Text(
                        'N1850550687',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(right: 160),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 17,
                        child: Icon(
                          Icons.check,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(' Estado: '),
                      Text(
                        'Enviado',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Detalles o descripcion'),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                color: Color.fromRGBO(243, 243, 243, 1),
                elevation: 6,
                child: SizedBox(
                  width: 330,
                  height: 100,
                  child: Center(
                      child: Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.edit_note,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          '  Compra de materiales, gastos medicos urgentes y combustibles y repuestos para los vehiculos'),
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              FloatingActionButton.extended(
                  onPressed: () => Navigator.pop(context),
                  label: const Text('  Close Disbursement  '),
                  backgroundColor: Colors.black),
              SizedBox(
                height: 34,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
