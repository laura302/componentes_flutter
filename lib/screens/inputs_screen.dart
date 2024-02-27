import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => InputsScreenState();
}

class InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; //Controlador al witge
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Entradas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Entradas',
            style:AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradaNombre(),
            entradaSwitch(),
            entradaSlider(),
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
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
                labelText: 'Escribe tu nombre: ',
                labelStyle : AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          );
  }
  Row entradaSwitch(){
  return Row (
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Text(
      '¿Te dusta flutter?',
      style: AppTheme.lightTheme.textTheme.headlineSmall,
    ),
    Switch(
    value: switchValue,
    onChanged: (value){
      setState(() {
        switchValue= value;
      });
      }),
    ],
    );
  }
  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Indica que tanto te gusta flutter : ',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: AppTheme.tercerColor,
          value: sliderValue,
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value){
            setState(() {
              sliderValue= value;
              print('Se cambio el slider: $sliderValue');
            });
          }),
      ],
    );
  }
}