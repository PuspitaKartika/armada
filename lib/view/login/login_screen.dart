import 'package:armada/widgets/main_button.dart';
import 'package:armada/widgets/main_text_field.dart';
import 'package:armada/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameEcd = TextEditingController();
  TextEditingController passwordEcd = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    userNameEcd.dispose();
    passwordEcd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/logo.png"),
              const SizedBox(
                height: 56,
              ),
              const Text(
                "Silahkan Masuk ke Akun Kamu",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              MainTextField(
                  controller: userNameEcd,
                  title: "Username",
                  hintText: "Masukan username"),
              const SizedBox(
                height: 24,
              ),
              PasswordTextField(
                  controller: passwordEcd, hintText: "Masukkan password"),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: MainButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    title: "Masuk",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
