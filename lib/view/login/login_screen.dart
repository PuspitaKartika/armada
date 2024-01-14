import 'package:armada/bloc/login/login_cubit.dart';
import 'package:armada/bloc/login/login_state.dart';
import 'package:armada/widgets/main_button.dart';
import 'package:armada/widgets/main_text_field.dart';
import 'package:armada/widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                Navigator.pushNamed(context, '/dashboard');
              } else if (state is LoginFailed) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("login gagal : ${state.message}")));
              }
            },
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
                        context.read<LoginCubit>().login(
                              name: userNameEcd.text,
                              password: passwordEcd.text,
                            );

                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(content: Text("login gagal ")));
                      },
                      //  () {
                      //   context.read<LoginCubit>().login(
                      //         name: userNameEcd.text,
                      //         password: passwordEcd.text,
                      //       );
                      // },
                      title: "Masuk",
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
