import 'package:flutter/material.dart';
import 'package:news/src/common/app_color.dart';
import 'package:news/src/screen/bottom_navigationbar.dart';
import 'package:news/src/widget/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Center(
                  child: Text(
                    'Sign in to unlock exclusive features and personalized content',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50),
                const Text('Email'),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.colorPrimary)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColor.colorPrimary))),
                ),
                const SizedBox(height: 20),
                const Text('Password'),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.colorPrimary)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColor.colorPrimary))),
                ),
                const SizedBox(height: 32),
                MaterialButton(
                  minWidth: double.infinity,
                  color: AppColor.colorPrimary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  },
                  child: const TextWidget(
                    'Login',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
