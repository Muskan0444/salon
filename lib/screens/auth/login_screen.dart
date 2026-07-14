import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/custom_textfield.dart';
import '../../core/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: 40),

              const Center(child: Icon(Icons.content_cut, size: 90)),

              const SizedBox(height: 30),

              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              const Text("Login to continue"),

              const SizedBox(height: 40),

              CustomTextField(
                hint: "Email",
                icon: Icons.email_outlined,
                controller: emailController,
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hint: "Password",
                icon: Icons.lock_outline,
                obscureText: true,
                controller: passwordController,
              ),

              const SizedBox(height: 35),

              PrimaryButton(
                text: "Login",
                onPressed: () {
                  context.go("/home");
                },
              ),

              const SizedBox(height: 25),
              Center(
                child: TextButton(
                  onPressed: () {},

                  child: const Text("Create Account"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
