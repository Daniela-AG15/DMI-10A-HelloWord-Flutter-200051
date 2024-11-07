# ✨ DMI-10A-HelloWorld-Flutter-200051

### _Primera aplicación en Flutter_  
📱 **Unidad 2 - Desarrollo Móvil Integral**

---

## Descripción
Este proyecto consiste en el desarrollo de una aplicación en **Flutter** para dispositivos móviles. Es la primera aplicación en Flutter como parte de la unidad 2 de la asignatura de Desarrollo Móvil Integral.

---

### 📅 Historial de Prácticas:

| No. | Nombre                                   | Potenciador | Estatus |
| --- | ---------------------------------------- | ----------- | ------- |
| 20  | Instalación y Configuración de Flutter   | 1           | Activa  |
| 21  | Hello World App                          | Pendiente   | Activa  |

---

# 🚀 Tarea 06: Contador Interactivo en Flutter

<p align="center">
  <img src="img/Logo.jpg" alt="Logo del proyecto" width="300"/>
  <img src="img/utxj.jpg" alt="Logo de la institución" width="300"/>
</p>

### 📝 Datos del Estudiante
- **Nombre:** Daniela Aguilar Torres  
- **Carrera:** Ingeniería en Desarrollo y Gestión de Software  
- **Cuatrimestre:** 10  
- **Grupo:** A  

---

## 🎯 Objetivo

El objetivo de esta práctica es crear una aplicación en Flutter que muestre un contador interactivo que permita incrementar, decrementar y restablecer el valor a cero mediante botones flotantes. Además, el color del contador cambia en función de su valor actual.

---

## 📋 Descripción de la Aplicación

Esta aplicación presenta un contador interactivo con tres botones flotantes y un diseño intuitivo. Sus características principales incluyen:

### Funcionalidad principal:
1. **Contador de Clics:**
   - El contador inicia en **cero** y se actualiza en tiempo real al interactuar con los botones.

2. **Botones interactivos:**
   - **Incremento (+1):** Aumenta el contador en 1. Color: **Verde**.
   - **Decremento (-1):** Disminuye el contador en 1. Color: **Rojo**.
   - **Reinicio:** Restaura el contador a cero. Color: **Azul**.

3. **Cambio de color dinámico:**
   - **Verde** para valores positivos.
   - **Rojo** para valores negativos.
   - **Azul** cuando el contador es cero.

4. **Texto adaptativo**:
   - Muestra `"Click"` cuando el contador es 1, y `"Clicks"` para cualquier otro valor.

---

## 📂 Código Fuente

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
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              color: Colors.red,
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
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

## 🖼️ Resultados

<p align="center">
  <img src="Resultado1/utxj.jpg" alt="Resultado 1" width="250"/>
  <img src="Resultado2/utxj.jpg" alt="Resultado 2" width="250"/>
  <img src="Resultado3/utxj.jpg" alt="Resultado 3" width="250"/>
</p>

---

## 🛠️ Tecnologías Utilizadas

- **Flutter** para el desarrollo de la interfaz.
- **Dart** como lenguaje de programación.

---

## 📸 Capturas de Pantalla

<p align="center">
  <img src="Resultado4/utxj.jpg" alt="Captura 4" width="250"/>
  <img src="Resultado5/utxj.jpg" alt="Captura 5" width="250"/>
</p>

---

### 💡 ¡Gracias por visitar este repositorio!

