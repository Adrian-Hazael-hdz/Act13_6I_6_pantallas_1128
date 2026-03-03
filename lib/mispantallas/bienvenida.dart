import 'package:flutter/material.dart';
import '../main.dart';

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      endDrawer: MenuLateral(),
      appBar: AppBar(
        title: const Text("PChop"),
        backgroundColor: Colors.purple[200],
        actions: [const Icon(Icons.search), Builder(builder: (context) => IconButton(icon: const Icon(Icons.menu), onPressed: () => Scaffold.of(context).openEndDrawer()))],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Text("Bienvenido!!!!!", style: TextStyle(fontSize: 25)),
                const Text("Productos destacados", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.85,
                  children: [
                    _card("PC gamer", "25,000", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto1.jpg"),
                    _card("Mouse", "850", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto2.jpg"),
                    _card("Telefono Pro", "18,500", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto3.jpg"),
                    _card("Teclado RGB", "1,200", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto4.jpg"),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/productos'), child: const Text("Ir a Productos")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _card(String n, String p, String u) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(children: [
        Expanded(child: Image.network(u, fit: BoxFit.cover, width: double.infinity)),
        Padding(padding: const EdgeInsets.all(5), child: Column(children: [Text(n, style: const TextStyle(fontWeight: FontWeight.bold)), Text("\$$p", style: const TextStyle(color: Colors.indigo))]))
      ]),
    );
  }
}