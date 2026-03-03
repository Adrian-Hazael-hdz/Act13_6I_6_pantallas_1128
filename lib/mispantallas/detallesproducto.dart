import 'package:flutter/material.dart';
import '../main.dart';

class Detallesproducto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuLateral(),
      appBar: AppBar(title: const Text("PChop"), backgroundColor: Colors.blueGrey[100]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text("Detalles Producto", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            const SizedBox(height: 20),
            Row(children: [
              Container(width: 100, height: 100, decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!)), child: Image.network("https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto1.jpg", fit: BoxFit.cover)),
              const SizedBox(width: 15),
              const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Nombre: PC Gamer", style: TextStyle(fontWeight: FontWeight.bold)), Text("Desc: Alta Gama"), Text("\$: 25,000.00")])
            ]),
            const SizedBox(height: 20),
            const Text("Detalles extra:", style: TextStyle(fontWeight: FontWeight.bold)),
            const Divider(),
            const Text("Calidad garantizada por Adrian Hernandez 6I. Incluye accesorios."),
            const SizedBox(height: 20),
            const Text("Reseñas:", style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("\"Excelente equipo, muy veloz y el diseño es increíble. Totalmente recomendado.\"", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black54)),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[100]), onPressed: () => Navigator.pop(context), child: const Text("Volver", style: TextStyle(color: Colors.black))),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green[100]), onPressed: () => Navigator.pushNamed(context, '/carrito'), child: const Text("Añadir", style: TextStyle(color: Colors.black))),
            ])
          ],
        ),
      ),
    );
  }
}