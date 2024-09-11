import 'package:flutter/material.dart';
import 'package:userauth/tabs/OTP.dart';
import 'package:userauth/tabs/forgotPassword.dart';
import 'package:userauth/tabs/login.dart';
import 'package:userauth/tabs/paymentmethod.dart';
import 'package:userauth/tabs/reset.dart';
import 'package:userauth/tabs/signup.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Authentication UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        '/forgotPassword': (context) => const ForgotPassword(),
        '/otp': (context) => const OTP(),
        '/reset': (context) => const Reset(),
        '/payment': (context) => const PaymentMethodScreen(),
      },
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SignUpScreen(),
          ],
        ),
      ),

    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          LoginScreen(),
        ],
      ),

    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          ForgotPwd(),
        ],
      ),

    );
  }
}

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: Column(
        children: [
          VerifyOTP(),
        ],
      ),

    );
  }
}

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ResetPassword(),
        ],
      ),

    );
  }
}

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaymentMethod(),
          ],
        ),
      ),

    );
  }
}