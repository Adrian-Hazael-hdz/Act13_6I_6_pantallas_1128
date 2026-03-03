import 'package:flutter/material.dart';
import '../main.dart';

class Detallesproducto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: MenuLateral(),
      appBar: AppBar(
        title: const Text("PChop"),
        backgroundColor: Colors.blueGrey[100],
        actions: [
          const Icon(Icons.search),
          Builder(builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text("Detalles Producto", 
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
            ),
            const SizedBox(height: 20),
            
            // Sección de Imagen y Datos Principales
            Row(
              children: [
                Container(
                  width: 120, height: 120, 
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto1.jpg", 
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nombre: PC Gamer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("Desc: Alta Gama"),
                    Text("\$: 25,000.00", style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
            
            const SizedBox(height: 25),
            const Text("Detalles extra:", style: TextStyle(fontWeight: FontWeight.bold)),
            const Divider(),
            const Text("Calidad garantizada por Adrian Hernandez 6I. Este equipo cuenta con los mejores componentes del mercado actual."),
            
            const SizedBox(height: 30),
            const Text("Reseñas:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            
            // SECCIÓN CORREGIDA: AVATAR + ESTRELLAS
            Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFFE1F5FE),
                  child: Icon(Icons.person, size: 20, color: Colors.blue),
                ),
                const SizedBox(width: 10),
                // Genera las 5 estrellas doradas
                Row(
                  children: List.generate(5, (index) => 
                    const Icon(Icons.star, color: Colors.amber, size: 20)
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 46, top: 5),
              child: Text(
                "\"Excelente equipo, muy veloz y el diseño es increíble. ¡Llegó muy rápido y bien empaquetado!\"",
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black54),
              ),
            ),
            
            const Spacer(),
            
            // Botones de Navegación
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[100]),
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Volver", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green[100]),
                  onPressed: () => Navigator.pushNamed(context, '/carrito'),
                  child: const Text("Añadir al carrito", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            const Center(
              child: Text("Adrian Hernandez 6I", style: TextStyle(color: Colors.grey, fontSize: 10))
            ),
          ],
        ),
      ),
    );
  }
}
