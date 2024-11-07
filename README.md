# DMI-10A-HelloWord-Flutter-200051

**DESCRIPCIÓN**
Primera Aplicacion realizada en Flutter para dispositivos Moviles, parte de la unidad 2 de la asignatura de Desarrollo Movil Integral

--- 
### HISTORIAL DE PRÁCTICAS:

|NO.|Nombre|Potenciador|Estatus|
|--|--|--|--|
|20|Instalacion y Configuracion de Flutter|1|Activa|
|21|Hello World App|pendiente|Activa|


# Tarea 06: Contador Interactivo en Flutter

<img src="img\Logo.jpg" alt="Descripción de la imagen" width="300"/>
<img src="img\utxj.jpg" alt="Descripción de la imagen" width="300"/>

### Datos del Estudiante
- **Nombre:** Daniela Aguilar Torres  
- **Carrera:** Ingeniería en Desarrollo y Gestión de Software  
- **Cuatrimestre:** 10  
- **Grupo:** A  

## Objetivo

El objetivo de esta práctica es crear una aplicación que muestre un contador interactivo que se pueda incrementar, decrementar y restablecer a cero utilizando botones flotantes. Además, el contador cambiará de color según su valor actual.

## Descripción

Esta es una aplicación desarrollada en **Flutter** que presenta un contador interactivo con tres botones flotantes. El contador puede ser incrementado, decrementado o restablecido a cero, y su valor se actualiza en tiempo real. A continuación, se detallan las características clave de la aplicación:

### Funcionalidad principal:

1. **Contador de clics:**
   - La aplicación muestra un contador que comienza en **cero**.
   - El valor del contador se actualiza en tiempo real al presionar los botones.

2. **Botones interactivos:**
   - **Botón de incremento (+1):** Aumenta el valor del contador en 1 cada vez que se presiona. Este botón tiene un ícono de suma **(+)** y está coloreado de **verde**.
   - **Botón de decremento (-1):** Disminuye el valor del contador en 1. Este botón tiene un ícono de resta **(-)** y está coloreado de **rojo**.
   - **Botón de reinicio (Restablecer):** Restaura el contador a cero. Este botón tiene un ícono de recarga y está coloreado de **azul**.

3. **Cambio de color y texto dinámico:**
   - El color del número del contador cambia según su valor:
     - **Verde** cuando el contador es positivo.
     - **Rojo** cuando el contador es negativo.
     - **Azul** cuando el contador es igual a cero.
   - El texto debajo del contador muestra:
     - `"Click"` si el contador es 1.
     - `"Clicks"` para cualquier otro número.

## Código Fuente

```dart
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('C_F_S_-200051')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style: TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w300,
                  color: clickCounter > 0
                      ? Colors.green
                      : clickCounter < 0
                          ? Colors.red
                          : Colors.blue,
                ),
              ),
              Text(
                (clickCounter == 1 || clickCounter == -1) ? 'Click' : 'Clicks',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              color: Colors.green,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              color: Colors.red,
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.refresh_rounded,
              color: Colors.blue,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            )
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: color,
      child: Icon(icon),
    );
  }
}

```

## Resultados
La aplicación funciona correctamente mostrando un contador interactivo que cambia de color según el valor actual del contador:

Verde cuando el contador es positivo.
Rojo cuando el contador es negativo.
Azul cuando el contador es cero.
Los botones permiten incrementar, decrementar o restablecer el contador a cero, con un diseño claro y funcional.

## Tecnologías utilizadas:
Flutter para el desarrollo de la interfaz.
Dart como lenguaje de programación.
Capturas de pantalla
