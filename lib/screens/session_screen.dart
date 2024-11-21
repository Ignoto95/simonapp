import 'package:flutter/material.dart';
import '../services/local_storage.dart';
import '../models/session_model.dart';

class SessionScreen extends StatelessWidget {
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nuova Sessione')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Descrizione'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final description = descriptionController.text.trim();
                final session = SessionModel(
                  description: description,
                  timestamp: DateTime.now(),
                );
                await LocalStorage.saveSession(session);
                Navigator.pop(context);
              },
              child: Text('Salva Sessione'),
            ),
          ],
        ),
      ),
    );
  }
}
