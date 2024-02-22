import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => InputsScreenState();
}

class InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Entradas',
          style:AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
             onPressed: null,
             child: Text(
              'Regresar',
             style: AppTheme.lightTheme.textTheme.bodySmall,
             )
            ),
            ElevatedButton(
             onPressed: null,
             child: Text(
              'Ventana de datos',
             style: AppTheme.lightTheme.textTheme.bodySmall,
             )
            ),
          ],
        )
      ],
    );
  }
}