import 'package:caja_chica/src/UI/widgets/Detalles_de_Desembolsos.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatefulWidget {
  const TransactionsList({Key? key}) : super(key: key);

  @override
  State<TransactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, bottom: 4, right: 8),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!, width: 1.5),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey[300]!,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer)
              ],
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Pago de materiales",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "-\$ 100,000.00 ",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            leading: const Icon(
              Icons.send,
              color: Colors.green,
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
          ),
        ),
      ),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetalleDesembolso(),
          )),
    );
  }
}
