import 'package:flutter/material.dart';
import 'package:school_app/core/services/token_storage.dart';
import 'package:school_app/features/auth/presentation/pages/login_page.dart';
import 'package:school_app/features/splash/presentation/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final token = await savedToken();
  runApp(SchoolApp(isAuthenticated: token != null));
}

class SchoolApp extends StatelessWidget {
  const SchoolApp({super.key, this.isAuthenticated = true});

  final bool isAuthenticated;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat-Arabic',
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff007353)),
        useMaterial3: true,
      ),
      home: isAuthenticated ? SplashPage() : LoginPage(),
    );
  }
}

Future<String?> savedToken() async {
  return TokenStorage.getToken();
}
