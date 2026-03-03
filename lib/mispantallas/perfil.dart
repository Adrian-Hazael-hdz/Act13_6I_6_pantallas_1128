import 'package:flutter/material.dart';
import '../main.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuLateral(),
      appBar: AppBar(title: const Text("PChop"), backgroundColor: const Color(0xFFD1C4E9)),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text("Perfil", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
              const SizedBox(width: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [Text("Adrian", style: TextStyle(fontSize: 20)), Text("adrian@gmail.com", style: TextStyle(color: Colors.grey))])
            ],
          ),
          const SizedBox(height: 40),
          _boton(context, "Editar Perfil", const Color(0xFFBBDEFB), () {}),
          const SizedBox(height: 15),
          _boton(context, "Cerrar Sesión", const Color(0xFFFFCDD2), () => Navigator.pushNamed(context, '/')),
          const Spacer(),
          const Text("Adrian Hernandez 6I", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _boton(BuildContext context, String t, Color c, VoidCallback p) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: c, minimumSize: const Size(double.infinity, 45)), onPressed: p, child: Text(t, style: const TextStyle(color: Colors.black))),
    );
  }
}