import 'package:flutter/material.dart';
import '../main.dart';

class Productos extends StatelessWidget {
  final List<Map<String, String>> datos = [
    {"n": "PC gamer", "p": "25,000", "u": "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto1.jpg"},
    {"n": "Mouse", "p": "850", "u": "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto2.jpg"},
    {"n": "telefono pro max", "p": "18,500", "u": "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto3.jpg"},
    {"n": "teclado rgb", "p": "1,200", "u": "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto4.jpg"},
    {"n": "audifonos", "p": "1,100", "u": "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto5.jpg"},
    {"n": "monitor 4k", "p": "4,500", "u": "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto6.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuLateral(),
      appBar: AppBar(title: const Text("PChop"), backgroundColor: const Color(0xFFC5CAE9)),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 700),
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.8, mainAxisSpacing: 10, crossAxisSpacing: 10),
                  itemCount: datos.length,
                  itemBuilder: (context, i) => Card(
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(context, '/detallesproducto'),
                      child: Column(children: [
                        Expanded(child: Image.network(datos[i]["u"]!, fit: BoxFit.cover, width: double.infinity)),
                        Text(datos[i]["n"]!, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text("\$${datos[i]["p"]}", style: const TextStyle(color: Colors.indigo)),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF8BBD0)), onPressed: () => Navigator.pushNamed(context, '/bienvenida'), child: const Text("Volver", style: TextStyle(color: Colors.black))),
                Column(children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFC8E6C9)), onPressed: () => Navigator.pushNamed(context, '/carrito'), child: const Text("Check out", style: TextStyle(color: Colors.black))),
                  const Text("Finalizar", style: TextStyle(fontSize: 10))
                ]),
              ],
            ),
          ),
          const Text("Adrian Hernandez 6I", style: TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }
}