import 'package:flutter/material.dart';
import '../main.dart';

class Iniciosesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
      endDrawer: MenuLateral(),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.computer),
            SizedBox(width: 8),
            Text("PChop"),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          Icon(Icons.shopping_cart),
          Builder(builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          )),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text("Adrian Hernandez 6I", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: "Ingrese su nombre", border: OutlineInputBorder())),
            SizedBox(height: 10),
            TextField(decoration: InputDecoration(labelText: "Ingrese su correo", border: OutlineInputBorder())),
            SizedBox(height: 10),
            TextField(obscureText: true, decoration: InputDecoration(labelText: "Ingrese contraseña", border: OutlineInputBorder())),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: Text("¿Olvidó su contraseña?")),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: () => Navigator.pushNamed(context, '/perfil'),
              child: Text("Iniciar Sesión"),
            ),
          ],
        ),
      ),
    );
  }
}