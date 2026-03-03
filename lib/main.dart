import 'package:flutter/material.dart';
import 'mispantallas/iniciosesion.dart';
import 'mispantallas/perfil.dart';
import 'mispantallas/bienvenida.dart';
import 'mispantallas/productos.dart';
import 'mispantallas/detallesproducto.dart';
import 'mispantallas/carrito.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'PChop App',
    initialRoute: '/',
    routes: {
      '/': (context) => Iniciosesion(),
      '/perfil': (context) => Perfil(),
      '/bienvenida': (context) => Bienvenida(),
      '/productos': (context) => Productos(),
      '/detallesproducto': (context) => Detallesproducto(),
      '/carrito': (context) => Carrito(),
    },
  ));
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("PChop Menu", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                Text("Adrian Hernandez 6I", style: TextStyle(color: Colors.white70, fontSize: 14)),
              ],
            ),
          ),
          _itemMenu(context, Icons.login, "Inicio de Sesión", '/'),
          _itemMenu(context, Icons.star, "Bienvenida", '/bienvenida'),
          _itemMenu(context, Icons.grid_view, "Productos", '/productos'),
          _itemMenu(context, Icons.info_outline, "Detalles de Producto", '/detallesproducto'),
          _itemMenu(context, Icons.shopping_cart, "Carrito", '/carrito'),
          _itemMenu(context, Icons.person, "Perfil", '/perfil'),
        ],
      ),
    );
  }

  Widget _itemMenu(BuildContext context, IconData icono, String titulo, String ruta) {
    return ListTile(
      leading: Icon(icono, color: Colors.blueGrey),
      title: Text(titulo),
      onTap: () => Navigator.pushNamed(context, ruta),
    );
  }
}