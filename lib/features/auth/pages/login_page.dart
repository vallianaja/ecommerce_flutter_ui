import 'package:ecommerce_skl_project/features/auth/bloc/login/login_bloc.dart';
import 'package:ecommerce_skl_project/main.dart';
import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_skl_project/features/auth/widgets/custom_email.dart';
import 'package:ecommerce_skl_project/features/auth/widgets/custom_password.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBG,
      body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 130.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                      color: AppColor.whiteText,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomField(
                  title: 'Email',
                  controller: usernameController,
                  obscure: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomField(
                  title: 'Password',
                  controller: passwordController,
                  obscure: true,
                ),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: AppColor.greyText,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),


                BlocListener<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if(state is LoginSuccess){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    }
                    if(state is LoginFailure){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.message),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is LoginLoading) {
                        return const CircularProgressIndicator();
                      }
                      return ElevatedButton(onPressed: () {
                        context.read<LoginBloc>().add(LoginButtonPressed(
                            email: usernameController.text,
                            password: passwordController.text));
                      }, child: Text('Sign In'),

                      );
                    },
                  ),
                )
              ]
          )
      ),
    );
  }
}
