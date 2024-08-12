import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  final Function toggleForm;

  RegisterForm(this.toggleForm);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void register() {
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;
    print("Email: $email, Password: $password, Confirm Password: $confirmPassword");
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
          TextField(
            controller: confirmPasswordController,
            decoration: InputDecoration(labelText: 'Confirm Password'),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: register,
            child: Text('Register'),
          ),
          TextButton(
            onPressed: () => toggleForm(),
            child: Text('Already have an account? Login'),
          ),
        ],
      ),
    );
  }
}
