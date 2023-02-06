import 'package:flutter/material.dart';

class TransactionsListdos extends StatefulWidget {
  const TransactionsListdos({Key? key}) : super(key: key);

  @override
  State<TransactionsListdos> createState() => _TransactionsListStatedos();
}

class _TransactionsListStatedos extends State<TransactionsListdos> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 3,
      child: Container(
          child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Pago de Bonos",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "-\$ 300,493.00 ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: const Icon(
          Icons.cancel_outlined,
          color: Colors.red,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('5 Febr 2023'),
            Text('NCF: B8902743450'),
            Text(
              'Compras de combustibles nueva sucursal',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }
}
