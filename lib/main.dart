import 'package:flutter/material.dart';

void main() => runApp(const PanaderiaApp());

class PanaderiaApp extends StatelessWidget {
  const PanaderiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Panaderia",
      home: Producto(),
    );
  }
}

class Producto extends StatelessWidget {
  const Producto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entre Migas - Mercado Ambar 6J',
          style: TextStyle(color: Color.fromARGB(255, 107, 64, 8), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 221, 188, 151),
        leading: const Icon(
          Icons.camera_alt,
          color: Color.fromARGB(255, 107, 64, 8),
        ),
        actions: const [
          Icon(Icons.bakery_dining, color: Color.fromARGB(255, 107, 64, 8)),
          SizedBox(width: 15),
          Icon(Icons.coffee, color: Color.fromARGB(255, 107, 64, 8)),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Elemento 1: Croissant
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFFFE0B2),
                child: Icon(Icons.bakery_dining, color: Colors.orange),
              ),
              title: const Text('Croissant Mantequilla', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Crujiente y dorado.'),
              trailing: const Text('\$2.50', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
            ),
          ),

          // Elemento 2: Baguette
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFD7CCC8),
                child: Icon(Icons.kebab_dining, color: Colors.brown),
              ),
              title: const Text('Baguette Artesanal', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Recién salido del horno.'),
              trailing: const Text('\$3.00', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
            ),
          ),

          // Elemento 3: Pastel
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFF8BBD0),
                child: Icon(Icons.cake, color: Colors.pink),
              ),
              title: const Text('Pastel Chocolate', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Relleno de ganache.'),
              trailing: const Text('\$15.00', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
            ),
          ),

          // Elemento 4: Café
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFFFFECB3),
                child: Icon(Icons.coffee, color: Colors.amber),
              ),
              title: const Text('Capuchino Grande', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('El acompañante perfecto.'),
              trailing: const Text('\$4.20', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
            ),
          ),
        ],
      ),
    );
  }
}