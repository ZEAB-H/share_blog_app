import 'package:flutter/material.dart';
import 'package:share_blog_app/core/theme/theme.dart';
import 'package:share_blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:share_blog_app/features/auth/presentation/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
