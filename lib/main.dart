import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InventarioScreen(),
    );
  }
}

class InventarioScreen extends StatelessWidget {
  const InventarioScreen({super.key});
  static const List<Map<String, int>> inventarioList = [
    {'idInventario': 1, 'idProductos': 101, 'cantidad': 50},
    {'idInventario': 2, 'idProductos': 102, 'cantidad': 30},
    {'idInventario': 3, 'idProductos': 103, 'cantidad': 20},
    {'idInventario': 4, 'idProductos': 104, 'cantidad': 10},
  ];
  static const List<Color> colors = [
    Color(0xFF64B5F6),
    Color(0xFF81C784),
    Color(0xFFFFF176),
    Color(0xFFE57373),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mota Examen 1275',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 10,
      ),
      body: ListView.builder(
        itemCount: inventarioList.length,
        itemBuilder: (context, index) {
          final item = inventarioList[index];
          return Card(
            margin: const EdgeInsets.all(10),
            color: colors[index % colors.length],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              title: Text('ID Inventario: ${item['idInventario']}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                  'ID Producto: ${item['idProductos']}\nCantidad: ${item['cantidad']}'),
              leading: const Icon(Icons.inventory, color: Colors.black87),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.black54),
            ),
          );
        },
      ),
    );
  }
}
