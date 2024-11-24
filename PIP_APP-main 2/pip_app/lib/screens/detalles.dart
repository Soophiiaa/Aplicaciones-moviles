import 'package:flutter/material.dart';
import 'package:pip_app/screens/home.dart';

class DetallesScreen extends StatefulWidget {
  const DetallesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DetallesScreenState createState() => _DetallesScreenState();
}

class _DetallesScreenState extends State<DetallesScreen> {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _largoController = TextEditingController();
  final TextEditingController _anchoController = TextEditingController();
  final TextEditingController _altoController = TextEditingController();

  // Método para validar si todos los campos están completos
  bool _camposCompletos() {
    return _pesoController.text.isNotEmpty &&
        _largoController.text.isNotEmpty &&
        _anchoController.text.isNotEmpty &&
        _altoController.text.isNotEmpty;
  }

  @override
  void dispose() {
    _pesoController.dispose();
    _largoController.dispose();
    _anchoController.dispose();
    _altoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color.fromARGB(255, 61, 0, 121),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Color.fromARGB(255, 61, 0, 121),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Destino",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins-Medium',
                        color: Color.fromARGB(255, 61, 0, 121),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Color.fromARGB(255, 61, 0, 121),
                    height: 16,
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color.fromARGB(255, 196, 196, 196),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Detalles",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins-Medium',
                        color: Color.fromARGB(255, 196, 196, 196),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Color.fromARGB(255, 196, 196, 196),
                    height: 16,
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color.fromARGB(255, 196, 196, 196),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Cotización",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins-Medium',
                        color: Color.fromARGB(255, 196, 196, 196),
                      ),
                    ),
                  ],
                ),
              ],
            ),

//--------------------------------DETALLES ENVIO-------
            const SizedBox(height: 30),
            const Text(
              'Detalles de envío',
              style: TextStyle(fontSize: 19, fontFamily: 'Poppins-Medium'),
            ),
            const Text(
              'Complete los detalles de su envío',
              style: TextStyle(fontSize: 16, fontFamily: 'Poppins-Regular'),
            ),
            const SizedBox(height: 20),

            // Campos de texto para peso, largo, ancho y alto (organizados en filas)
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Peso',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Poppins-Regular'),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _pesoController,
                        decoration: const InputDecoration(
                          labelText: 'Ingrese peso (kg)',
                          hintText: 'Ej: 2.5',
                          labelStyle: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 12,
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Largo',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Poppins-Regular'),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _largoController,
                        decoration: const InputDecoration(
                          labelText: 'Ingrese largo (cm)',
                          hintText: 'Ej: 30',
                          labelStyle: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 12,
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ancho',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Poppins-Regular'),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _anchoController,
                        decoration: const InputDecoration(
                          labelText: 'Ingrese ancho (cm)',
                          hintText: 'Ej: 10',
                          labelStyle: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 12,
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingrese el ancho';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Alto',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Poppins-Regular'),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _altoController,
                        decoration: const InputDecoration(
                          labelText: 'Ingrese alto (cm)',
                          hintText: 'Ej: 15',
                          labelStyle: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 12,
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            Center(
              child: SizedBox(
                width: 330,
                child: ElevatedButton(
                  onPressed: () {
                    if (_camposCompletos()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Cotizar(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Por favor, complete todos los campos.'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: const Text(
                    'GENERAR COTIZACIÓN',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins-Medium',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
