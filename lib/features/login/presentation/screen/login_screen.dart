import 'package:flutter/material.dart';
import '../../domain/usecases/login_usecase.dart';
import 'package:study_injection_and_routes_native/core/constants/strings_constants.dart';

class LoginScreen extends StatelessWidget {
  final LoginUseCase loginUseCase;

  LoginScreen({super.key, required this.loginUseCase});

  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(StringsConstants.loginButton)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Nome de usuário',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                String username = usernameController.text;
                if (username.isNotEmpty) {
                  loginUseCase.executeSaveUser(username);
                  Navigator.of(context).pushNamed('/home');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Por favor, insira o nome de usuário.')),
                  );
                }
              },
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
