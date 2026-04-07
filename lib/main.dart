import 'package:flutter/material.dart';
// Import semua file latihan kamu
import 'basic_widgets/loading_cupertino.dart';
import 'basic_widgets/fab_widget.dart';
import 'basic_widgets/input_widget.dart';
import 'basic_widgets/date_picker_widget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menerapkan Widget Material Design dan iOS Cupertino',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const MenuUtama(),
    );
  }
}

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Latihan Flutter")),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // Tombol Langkah 1
          ListTile(
            title: const Text("Langkah 1: Loading Cupertino"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadingCupertino())),
          ),
          // Tombol Langkah 2
          ListTile(
            title: const Text("Langkah 2: FAB Widget"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FabWidget())),
          ),
          // Tombol Langkah 5
          ListTile(
            title: const Text("Langkah 5: TextField Widget"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyInputWidget())),
          ),
          // Tombol Langkah 6
          ListTile(
            title: const Text("Langkah 6: Date Picker Widget"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyDatePicker(title: "Date Picker"))),
          ),
        ],
      ),
    );
  }
}