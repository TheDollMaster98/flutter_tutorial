import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Creazione dei controller per gli input di email e password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswController = TextEditingController();

  // Variabili per mantenere lo stato degli input
  String? email;
  String? psw;

  // Metodo chiamato quando si preme il pulsante di login
  void onLogin() {
    setState(() {
      // tolgo gli spazi con trim ed accedo al valore del controller:
      email = emailController.text.trim();
      psw = pswController.text.trim();
    });
    // Pulizia dei campi di input
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
          // Container per l'input email con bordo arrotondato e sfondo grigio chiaro
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: emailController,
              // Tipo di tastiera impostato per email
              keyboardType: TextInputType.emailAddress,
              // Definisco lo stile del testo
              // style: ,
              // Definisco lo stile dell'input
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                // Icona all'inizio dell'input
                prefixIcon: Icon(Icons.email),
                // placeholder classico, scompare appena clicchi:
                // hintText: "Email",
                // Etichetta che si comporta come hint, solo che va sopra quando si clicca
                labelText: "Email",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Container per l'input password con bordo arrotondato e sfondo grigio chiaro
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: pswController,
              // Tipo di tastiera impostato per password visibile
              keyboardType: TextInputType.visiblePassword,
              // Oscura il testo per la password
              obscureText: true,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                // Icona all'inizio dell'input
                prefixIcon: Icon(Icons.lock),
                // Etichetta che si comporta come hint e va sopra quando si clicca
                labelText: "Password",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Pulsante di login con stile e azione onPressed
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onLogin,
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Visualizzazione dei risultati del form
          if (email != null && psw != null) ...[
            Text(
              "Email: $email",
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Text(
              "Password: $psw",
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ]
        ],
      ),
    );
  }
}
