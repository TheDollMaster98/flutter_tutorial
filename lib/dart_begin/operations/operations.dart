import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialOperators extends StatelessWidget {
  const DartTutorialOperators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart: Operatori'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo e spiegazione generale degli operatori in Dart
            sectionTitle("Operatori in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "In Dart, gli operatori sono simboli che indicano al compilatore di eseguire operazioni specifiche "
              "come matematiche, logiche, di assegnazione, e altro. Vediamo gli operatori più comuni e il loro utilizzo.",
            ),
            const SizedBox(height: 20),

            // Esempio di Operatori Aritmetici
            sectionTitle("Operatori Aritmetici"),
            const SizedBox(height: 10),
            explanationText(
              "Gli operatori aritmetici eseguono operazioni matematiche di base. "
              "Ecco alcuni esempi di operatori aritmetici in azione:",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Operatori Aritmetici",
              const Text(
                '''
void operatori() {
  var somma = 1 + 2;
  print("Somma: 1 + 2 = \$somma");

  var sottrazione = 2 - 1;
  print("Sottrazione: 2 - 1 = \$sottrazione");

  var moltiplicazione = 2 * 3;
  print("Moltiplicazione: 2 * 3 = \$moltiplicazione");

  var divisione = 4 / 2;
  print("Divisione: 4 / 2 = \$divisione");

  var divisioneIntera = 4 ~/ 2;
  print("Divisione intera: 4 ~/ 2 = \$divisioneIntera");

  var modulo = 5 % 2;
  print("Modulo: 5 % 2 = \$modulo");

  var incremento = 5;
  incremento++;
  print("Incremento: 5++, ora incremento = \$incremento");

  var decremento = 5;
  decremento--;
  print("Decremento: 5--, ora decremento = \$decremento");
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Operatori Relazionali
            sectionTitle("Operatori Relazionali"),
            const SizedBox(height: 10),
            explanationText(
              "Gli operatori relazionali confrontano due valori e restituiscono un valore booleano (`true` o `false`). "
              "Ecco alcuni esempi di operatori relazionali:",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Operatori Relazionali",
              const Text(
                '''
var maggiore = 5 > 3;
print("Maggiore: 5 > 3 = \$maggiore");

var minore = 3 < 5;
print("Minore: 3 < 5 = \$minore");

var maggioreUguale = 5 >= 5;
print("Maggiore uguale: 5 >= 5 = \$maggioreUguale");

var minoreUguale = 5 <= 5;
print("Minore uguale: 5 <= 5 = \$minoreUguale");

var uguale = 5 == 5;
print("Uguale: 5 == 5 = \$uguale");

var diverso = 5 != 3;
print("Diverso: 5 != 3 = \$diverso");
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Operatori di Controllo per Dati Strutturati
            sectionTitle("Operatori di Controllo per Dati Strutturati"),
            const SizedBox(height: 10),
            explanationText(
              "Gli operatori `is` e `is!` sono usati per verificare il tipo di una variabile.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Operatori di Controllo",
              const Text(
                '''
var isTipo = "ciao" is String;
print("È di tipo: 'ciao' is String = \$isTipo");

var nonIsTipo = "ciao" is! int;
print("Non è di tipo: 'ciao' is! int = \$nonIsTipo");
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Operatori Bitwise
            sectionTitle("Operatori Bitwise"),
            const SizedBox(height: 10),
            explanationText(
              "Gli operatori bitwise eseguono operazioni a livello di bit. "
              "Questi operatori sono utili in applicazioni a basso livello come la manipolazione di bit in dati binari.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Operatori Bitwise",
              const Text(
                '''
// Bitwise AND: restituisce 1 solo se entrambi i bit sono 1
var and = 5 & 3;
print("And: 5 & 3 = \$and");

// Bitwise OR: restituisce 1 se almeno uno dei bit è 1
var or = 5 | 3;
print("Or: 5 | 3 = \$or");

// Bitwise XOR: restituisce 1 solo se i bit sono diversi
var xor = 5 ^ 3;
print("Xor: 5 ^ 3 = \$xor");

// Bitwise Complement: nega ogni bit, trasforma 0 in 1 e viceversa
var complemento = ~5;
print("Complemento Not: ~5 = \$complemento");

// Bitwise Shift a Sinistra: sposta i bit verso sinistra, inserendo 0 a destra
var shiftSinistra = 5 << 1;
print("Shift a sinistra: 5 << 1 = \$shiftSinistra");

// Bitwise Shift a Destra: sposta i bit verso destra, inserendo 0 a sinistra
var shiftDestra = 5 >> 1;
print("Shift a destra: 5 >> 1 = \$shiftDestra");
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Operatori di Assegnazione
            sectionTitle("Operatori di Assegnazione"),
            const SizedBox(height: 10),
            explanationText(
              "Gli operatori di assegnazione sono usati per assegnare valori alle variabili. "
              "Essi combinano spesso operazioni con l'assegnazione per una sintassi più compatta.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Operatori di Assegnazione",
              const Text(
                '''
var assegnazione = 5;
print("Assegnazione: assegnazione = 5, ora assegnazione = \$assegnazione");

var assegnazioneSeNull = null;
assegnazioneSeNull ??= 5;
print("Assegnazione se null: assegnazioneSeNull ??= 5, se no lascia il suo valore originale, ora assegnazioneSeNull = \$assegnazioneSeNull");

var sommaEAssegna = 5;
sommaEAssegna += 5;
print("Somma e assegna: sommaEAssegna += 5, ora sommaEAssegna = \$sommaEAssegna");
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Operatori Logici di Concatenazione
            sectionTitle("Operatori Logici di Concatenazione"),
            const SizedBox(height: 10),
            explanationText(
              "Gli operatori logici permettono di combinare espressioni booleane e restituire `true` o `false`.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Operatori Logici",
              const Text(
                '''
var andLogico = true && false;
print("And logico: true && false = \$andLogico");

var orLogico = true || false;
print("Or logico: true || false = \$orLogico");

var notLogico = !true;
print("Not logico: !true = \$notLogico");
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Espressioni Condizionali
            sectionTitle("Espressioni Condizionali"),
            const SizedBox(height: 10),
            explanationText(
              "Le espressioni condizionali consentono di eseguire operazioni diverse in base a una condizione.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Espressioni Condizionali",
              const Text(
                '''
var ternario = true ? 'vero' : 'falso';
print("Ternario: true ? 'vero' : 'falso' = \$ternario");

var nullCoalescing = null ?? 'default';
print("Null coalescing: null ?? 'default' = \$nullCoalescing");
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Espressioni Collezioni
            sectionTitle("Espressioni Collezioni"),
            const SizedBox(height: 10),
            explanationText(
              "Dart fornisce un supporto avanzato per le espressioni collezioni con if, for, e l'operatore spread (`...`). "
              "Questi permettono di costruire e manipolare collezioni in modo elegante.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Espressioni Collezioni",
              const Text(
                '''
var ok = true;

var items = ["A", "B", "C", if (ok) 'D'];
print("Selezione: items = ['A', 'B', 'C', if (ok) 'D'], ora items = \$items");

var list = [1, 2, 3];
var items2 = ["A", "B", "C", for (var e in list) '\$e'];
print("Iterazioni: items2 = ['A', 'B', 'C', for (var e in list) '\$e'], ora items2 = \$items2");

var els = ["A", "B"];
var els2 = ["C", ...els];
print("Spread: els2 = ['C', ...els], ora els2 = \$els2");
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Output del codice esemplificativo
            sectionTitle("Output del Codice"),
            explanationText(
              "Eseguendo il codice sopra, otterrai il seguente output:",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Output:",
              const Text(
                '''
---------------Operatori Aritmetici---------------
Somma: 1 + 2 = 3
Sottrazione: 2 - 1 = 1
Moltiplicazione: 2 * 3 = 6
Divisione: 4 / 2 = 2.0
Divisione intera: 4 ~/ 2 = 2
Modulo: 5 % 2 = 1
Incremento: 5++, ora incremento = 6
Decremento: 5--, ora decremento = 4

---------------Operatori Relazionali---------------
Maggiore: 5 > 3 = true
Minore: 3 < 5 = true
Maggiore uguale: 5 >= 5 = true
Minore uguale: 5 <= 5 = true
Uguale: 5 == 5 = true
Diverso: 5 != 3 = true

---------------Operatori di Controllo per Dati Strutturati---------------
È di tipo: 'ciao' is String = true
Non è di tipo: 'ciao' is! int = true

---------------Operatori Bitwise---------------
And: 5 & 3 = 1
Or: 5 | 3 = 7
Xor: 5 ^ 3 = 6
Complemento Not: ~5 = -6
Shift a sinistra: 5 << 1 = 10
Shift a destra: 5 >> 1 = 2

---------------Operatori di Assegnazione---------------
Assegnazione: assegnazione = 5, ora assegnazione = 5
Assegnazione se null: assegnazioneSeNull ??= 5, se no lascia il suo valore originale, ora assegnazioneSeNull = 5
Somma e assegna: sommaEAssegna += 5, ora sommaEAssegna = 10

---------------Operatori Logici di Concatenazione---------------
And logico: true && false = false
Or logico: true || false = true
Not logico: !true = false

---------------Espressioni Condizionali---------------
Ternario: true ? 'vero' : 'falso' = vero
Null coalescing: null ?? 'default' = default

---------------Espressioni Collezioni---------------
Selezione: items = ['A', 'B', 'C', if (ok) 'D'], ora items = [A, B, C, D]
Iterazioni: items2 = ['A', 'B', 'C', for (var e in list) '\$e'], ora items2 = [A, B, C, 1, 2, 3]
Spread: els2 = ['C', ...els], ora els2 = [C, A, B]
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
