import 'package:flutter/material.dart';
import '../main.dart';

class Carrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuLateral(),
      appBar: AppBar(title: const Text("PChop"), backgroundColor: const Color(0xFFDCEDC8)),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(15), child: Text("Carrito", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
          Expanded(
            child: ListView(
              children: [
                _item("Monitor Pro", "4,500", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto6.jpg"),
                _item("Teclado RGB", "1,200", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto4.jpg"),
                _item("Audífonos", "1,100", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto5.jpg"),
                _item("Mouse Pro", "850", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto2.jpg"),
              ],
            ),
          ),
          const Divider(),
          _botonesFinales(context),
          const Text("Adrian Hernandez 6I", style: TextStyle(fontSize: 10, color: Colors.grey)),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _item(String n, String p, String u) {
    return ListTile(
      leading: Container(width: 60, height: 60, decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!)), child: Image.network(u, fit: BoxFit.cover)),
      title: Text(n),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("\$$p", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Row(children: [Icon(Icons.delete, color: Colors.pink[200]), const SizedBox(width: 15), const Icon(Icons.info_outline, color: Colors.blue)])
      ]),
    );
  }

  Widget _botonesFinales(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF8BBD0)), onPressed: () => Navigator.pop(context), child: const Text("Volver", style: TextStyle(color: Colors.black))),
        Column(children: [
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFC8E6C9)), onPressed: () => Navigator.pushNamed(context, '/'), child: const Text("Check out", style: TextStyle(color: Colors.black))),
          const Text("Finalizar", style: TextStyle(fontSize: 10))
        ])
      ]),
    );
  }
}