import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => InputsScreenState();
}

class InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pantalla de entradas')
    );
  }
}