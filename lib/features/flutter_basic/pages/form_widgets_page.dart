import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/checkbox_widgets.dart';
import 'package:flutter_tutorial/core/widgets/login_form_widgets.dart';
import 'package:flutter_tutorial/core/widgets/radio_button_widgets.dart';
import 'package:flutter_tutorial/core/widgets/slider_widgets.dart';
import 'package:flutter_tutorial/core/widgets/switch_button_widgets.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

class FormWidgetsPage extends StatelessWidget {
  const FormWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Login Form
            sectionTitle("Login Form"),
            const SizedBox(height: 10),
            explanationText(
              "Il Login Form è un esempio comune di form che include campi per l'inserimento dell'email e della password.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Login Form", const LoginForm()),

            const SizedBox(height: 20),
            // Checkbox
            sectionTitle("Checkbox"),
            const SizedBox(height: 10),
            explanationText(
              "La Checkbox è un widget che permette all'utente di fare una selezione binaria, può essere utilizzata in moduli e liste.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Checkbox", const CheckBoxWidget()),

            const SizedBox(height: 20),
            // RadioButton
            sectionTitle("RadioButton"),
            const SizedBox(height: 10),
            explanationText(
              "Il RadioButton permette all'utente di fare una selezione tra un gruppo di opzioni. "
                  "È utile quando solo una selezione deve essere attiva alla volta.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di RadioButton", const RadioButtonWidget()),

            const SizedBox(height: 20),
            // Switch
            sectionTitle("Switch"),
            const SizedBox(height: 10),
            explanationText(
              "Lo Switch è un widget che permette all'utente di fare una selezione binaria (on/off). "
                  "È spesso utilizzato per attivare o disattivare una funzionalità.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Switch", const SwitchButtonWidget()),

            const SizedBox(height: 20),
            // Slider
            sectionTitle("Slider"),
            const SizedBox(height: 10),
            explanationText(
              "Lo Slider è un widget che permette all'utente di selezionare un valore da un intervallo di valori facendo scorrere un selettore. "
                  "È utile per selezionare un valore numerico o percentuale.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Slider", const SliderWidget()),
          ],
        ),
      ),
    );
  }
}
