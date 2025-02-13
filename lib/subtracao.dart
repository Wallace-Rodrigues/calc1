import 'package:flutter/material.dart';

class Subtracacao extends StatefulWidget {
  const Subtracacao({super.key});

  @override
  State<Subtracacao> createState() => _SubtracacaoState();
}

class _SubtracacaoState extends State<Subtracacao> {
  int resultado = 0;
  TextEditingController controlaX = TextEditingController();
  TextEditingController controlaY = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: controlaX,
            decoration: const InputDecoration(labelText: 'X:'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controlaY,
            decoration: const InputDecoration(labelText: 'Y:'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                resultado = int.parse(controlaX.text) - int.parse(controlaY.text);
              });
            },
            child: const Text('Subtrair'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Resultado: $resultado',
            style: const TextStyle(
              fontSize: 28,
            ),
            ),
        ],
      ),
    );
  }
}