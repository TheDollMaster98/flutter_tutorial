import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/cubit/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Creazione dei controller per gli input di email e password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            final cubit = context.read<LoginCubit>();

            return Column(
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
                    onPressed: () {
                      // vecchio setState:
                      // setState(() {
                      //   email = emailController.text.trim();
                      //   psw = pswController.text.trim();
                      // });
                      cubit.login(emailController.text, pswController.text);
                      emailController.clear();
                      pswController.clear();
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Visualizzazione dei risultati del form
                if (state.email != null && state.password != null) ...[
                  Text(
                    "Email: ${state.email}",
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Text(
                    "Password: ${state.password}",
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ]
              ],
            );
          },
        ),
      ),
    );
  }
}
