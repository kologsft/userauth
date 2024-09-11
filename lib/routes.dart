import 'package:flutter/material.dart';
import 'package:userauth/tabs/OTP.dart';
import 'package:userauth/tabs/billing.dart';
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
        '/creditCard': (context) => const Billing(),
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

class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        centerTitle: true,
        title: const Text('Add payment'),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.done))],
        automaticallyImplyLeading: true,
      ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black12,
            child: const Column(
              children: [
                CreditCard(),
              ],
            ),
          ),
        ),
    );
  }
}
