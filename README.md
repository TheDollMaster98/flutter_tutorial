# flutter_tutorial

A complete Flutter 3 tutorial

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Schema:
llib/
│
├── app.dart                         // Widget radice dell'app
├── main.dart                        // Punto d'ingresso
│
├── config/
│   ├── router.dart                  // Configurazione go_router
│   └── theme_cubit.dart             // Gestione tema con Cubit
│
├── features/
│   ├── home/
│   │   ├── home_page.dart           // Esempio di pagina
│   │   └── ...
│   └── ...
│
└── shared/
├── constants/                   // Colori, dimensioni, ecc.
└── widgets/                     // Widget riutilizzabili
