import 'package:flutter/material.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_14_form/widgets/checkbox_widgets_14.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_14_form/widgets/login_form_widgets_14.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_14_form/widgets/radio_button_widgets_14.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_14_form/widgets/slider_widgets_14.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_14_form/widgets/switch_button_widgets_14.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial14 extends StatelessWidget {
  const FlutterStartTutorial14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Forms in Flutter 3")),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Login Form"),
            const SizedBox(height: 10),
            explanationText(
              "Il Login Form è un esempio comune di form che include campi per l'inserimento dell'email e della password.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Login Form", LoginForm()),
            propertyExample(
              "Codice Login Form:",
              const Text('''
class LoginForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswController = TextEditingController();

  LoginForm({super.key});

  void onLogin() {
    final email = emailController.text.trim();
    final psw = pswController.text.trim();
    print("Email: \$email");
    print("Password: \$psw");
    emailController.clear();
    pswController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4)),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4)),
            child: TextField(
              controller: pswController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onLogin,
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Checkbox"),
            const SizedBox(height: 10),
            explanationText(
              "La Checkbox è un widget che permette all'utente di fare una selezione binaria, può essere utilizzata in moduli e liste.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Checkbox", const CheckBoxWidget()),
            propertyExample(
              "Codice Checkbox:",
              const Text('''
class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked;
  bool? isCheckedTile = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (value) => setState(() {
                isChecked = value;
                print("Stato checkbox => \$isChecked");
              }),
            ),
            const Text("Checkbox"),
          ],
        ),
        CheckboxListTile(
          tristate: true,
          value: isCheckedTile,
          title: const Text("Checkbox List Tile"),
          onChanged: (value) => setState(() {
            isCheckedTile = value;
            print("Stato checkbox => \$isCheckedTile");
          }),
        )
      ],
    );
  }
}'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("RadioButton"),
            const SizedBox(height: 10),
            explanationText(
              "Il RadioButton permette all'utente di fare una selezione tra un gruppo di opzioni. È utile quando solo una selezione deve essere attiva alla volta.",
            ),
            const SizedBox(height: 10),
            propertyExample(
                "Esempio di RadioButton", const RadioButtonWidget()),
            propertyExample(
              "Codice RadioButton:",
              const Text('''
class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  CardVariant cardVariantChosen = CardVariant.basic;
  CardVariant cardVariantChosenList = CardVariant.basic;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("Radio:"),
      Row(
        children: [
          Radio<CardVariant>(
            value: CardVariant.basic,
            groupValue: cardVariantChosen,
            onChanged: (value) => setState(
              () => cardVariantChosen = value!,
            ),
          ),
          const Text("Basic")
        ],
      ),
      Row(
        children: [
          Radio<CardVariant>(
            value: CardVariant.normal,
            groupValue: cardVariantChosen,
            onChanged: (value) => setState(
              () => cardVariantChosen = value!,
            ),
          ),
          const Text("Normal")
        ],
      ),
      Row(
        children: [
          Radio<CardVariant>(
            value: CardVariant.pro,
            groupValue: cardVariantChosen,
            onChanged: (value) => setState(
              () => cardVariantChosen = value!,
            ),
          ),
          const Text("Pro")
        ],
      ),
      const Text("Radio List tile:"),
      RadioListTile<CardVariant>(
        value: CardVariant.basic,
        title: const Text("Basic"),
        groupValue: cardVariantChosenList,
        onChanged: (value) => setState(
          () => cardVariantChosenList = value!,
        ),
      ),
      RadioListTile<CardVariant>(
        value: CardVariant.normal,
        title: const Text("Normal"),
        groupValue: cardVariantChosenList,
        onChanged: (value) => setState(
          () => cardVariantChosenList = value!,
        ),
      ),
      RadioListTile<CardVariant>(
        value: CardVariant.pro,
        title: const Text("Pro"),
        groupValue: cardVariantChosenList,
        onChanged: (value) => setState(
          () => cardVariantChosenList = value!,
        ),
      ),
    ]);
  }
}

enum CardVariant {
  basic,
  normal,
  pro,
}'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Switch"),
            const SizedBox(height: 10),
            explanationText(
              "Lo Switch è un widget che permette all'utente di fare una selezione binaria (on/off). È spesso utilizzato per attivare o disattivare una funzionalità.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Switch", const SwitchButtonWidget()),
            propertyExample(
              "Codice Switch:",
              const Text('''
class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({super.key});

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool isSwitched = false;
  bool isSwitchedTile = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: isSwitched,
          onChanged: (value) => setState(
            () => isSwitched = value,
          ),
        ),
        SwitchListTile(
          value: isSwitchedTile,
          title: const Text("Switch List tile"),
          onChanged: (value) => setState(
            () => isSwitchedTile = value,
          ),
        )
      ],
    );
  }
}'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Slider"),
            const SizedBox(height: 10),
            explanationText(
              "Lo Slider è un widget che permette all'utente di selezionare un valore da un intervallo di valori facendo scorrere un selettore. È utile per selezionare un valore numerico o percentuale.",
            ),
            const SizedBox(height: 10),
            propertyExample("Esempio di Slider", const SliderWidget()),
            propertyExample(
              "Codice Slider:",
              const Text('''
class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double ralValue = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: ralValue,
      min: 0,
      max: 40000,
      divisions: 1000,
      label: ralValue.toStringAsFixed(0),
      onChanged: (value) => setState(() => ralValue = value),
    );
  }
}'''),
            ),
          ],
        ),
      ),
    );
  }
}
