# simonapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


#####

lib/
├── main.dart           # Punto di ingresso dell'applicazione
├── screens/
│   ├── login_screen.dart  # Schermata di login 
│   ├── home_screen.dart   # Schermata principale dopo il login
│   ├── session_screen.dart # Schermata per la creazione della sessione
├── models/
│   └── session_model.dart # Modello dati per la sessione
├── services/
│   ├── auth_service.dart  # Gestione login/logout
│   ├── local_storage.dart # Salvataggio locale con SQLite
└── widgets/
    └── responsive_widget.dart # Widget per layout responsivo


#####