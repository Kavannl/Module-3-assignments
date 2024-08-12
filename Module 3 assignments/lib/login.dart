import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final Function toggleForm;

  LoginForm(this.toggleForm);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    String email = emailController.text;
    String password = passwordController.text;
    print("Email: $email, Password: $password");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: login,
            child: Text('Login'),
          ),
          TextButton(
            onPressed: () => toggleForm(),
            child: Text('Don\'t have an account? Register'),
          ),
        ],
      ),
    );
  }
}
