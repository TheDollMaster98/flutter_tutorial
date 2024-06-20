final List<Map<String, String>> sections = [
  {
    'title': 'Dart Begin',
    'description':
        'Il corso ideale per assicurarsi delle solide basi prima di tuffarsi nel mondo Flutter.',
    'route': '/dart_begin'
  },
  {
    'title': 'Flutter Start',
    'description':
        'Scopri cos\'è Flutter, i suoi componenti, come fare chiamate HTTP e gestire i JSON.',
    'route': '/flutter_start'
  },
  {
    'title': 'Flutter Advanced',
    'description':
        'App con più schermate, salva dati in locale e gestisci lo stato globale con il BLoC.',
    'route': '/flutter_advanced'
  },
  {
    'title': 'Flutter Architecture',
    'description':
        'Approfondisci i concetti di Mapper, Provider, Repository e BLoC.',
    'route': '/flutter_architecture'
  },
  {
    'title': 'Flutter Focus',
    'description':
        'Implementa l\'autenticazione, i temi, la dark mode e scopri 6 librerie indispensabili.',
    'route': '/flutter_focus'
  },
  {
    'title': 'Flutter Pro',
    'description':
        'Pubblicazione sugli store, plugin nativi, testing, responsive, animazioni e multilingue,',
    'route': '/flutter_pro'
  }
];

// Model for the day
class DayModel {
  final int number;
  final String day;
  final String month;

  const DayModel({
    required this.number,
    required this.day,
    required this.month,
  });
}

// Example data
final days = [
  const DayModel(
    number: 1,
    day: "Lunedi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 2,
    day: "Martedi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 3,
    day: "Mercoledi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 4,
    day: "Giovedi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 5,
    day: "Venerdi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 6,
    day: "Sabato",
    month: "Gennaio",
  ),
  const DayModel(
    number: 7,
    day: "Domenica",
    month: "Gennaio",
  ),
  const DayModel(
    number: 8,
    day: "Lunedi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 9,
    day: "Martedi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 10,
    day: "Mercoledi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 11,
    day: "Giovedi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 12,
    day: "Venerdi",
    month: "Gennaio",
  ),
  const DayModel(
    number: 13,
    day: "Sabato",
    month: "Gennaio",
  ),
  const DayModel(
    number: 14,
    day: "Domenica",
    month: "Gennaio",
  ),
];
