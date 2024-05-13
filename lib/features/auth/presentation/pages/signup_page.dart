import 'package:flutter/material.dart';
import 'package:share_blog_app/core/theme/app_pallete.dart';
import 'package:share_blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:share_blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    formKey.currentState?.validate();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: "Name",
                controller: nameController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: "Email",
                controller: emailController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              AuthGradientButton(),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: Theme.of(context).textTheme.titleSmall,
                      children: [
                    TextSpan(
                      text: 'Sign in',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.w600),
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
