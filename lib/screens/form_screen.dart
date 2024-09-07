import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Formulario'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.network(
              'https://files.cercomp.ufg.br/weby/up/579/o/Forms.png',
               width: 150,
               height: 150,
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(labelText: 'campo1'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'por favar,prencha este campo';
                }
                return null;
              },
            ),
             TextFormField(
              decoration: InputDecoration(labelText: 'campo2'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'por favar,prencha este campo';
                }
                return null;
              },
            ),
             TextFormField(
              decoration: InputDecoration(labelText: 'campo3'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'por favar,prencha este campo';
                }
                return null;
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed:() {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processando dados')),
                  );
              }
             },
             child: Text('Enviar'),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
            