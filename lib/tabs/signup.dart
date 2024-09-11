import 'package:flutter/material.dart';
import '../formfields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SizedBox(
          width: 450,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          //Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'The email and the password you use will be required to log in next time. '
                              'Make sure you keep your credentials safe and secure.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(
                    labelText: 'First Name',
                    icon: Icons.person,
                    iconColor: Colors.green.shade300,
                    myInt: 400,
                    showIcon: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(
                    labelText: 'Last Name',
                    icon: Icons.person,
                    iconColor: Colors.green.shade300,
                    myInt: 400,
                    showIcon: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(
                    labelText: 'Email',
                    icon: Icons.email,
                    iconColor: Colors.green.shade300,
                    keyboardType: TextInputType.emailAddress,
                    myInt: 400,
                    showIcon: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: MyTextField(
                //     labelText: 'Phone',
                //     icon: Icons.phone,
                //     iconColor: Colors.green.shade300,
                //     myInt: 400,
                //     showIcon: true,
                //     validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return 'Please enter your phone number';
                //       }
                //       final RegExp phoneRegExp = RegExp(r'^\d{10}$');
                //       if (!phoneRegExp.hasMatch(value)) {
                //         return 'Please enter a valid 10-digit phone number';
                //       }
                //       return null;
                //     },
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextField(
                    labelText: 'Password',
                    icon: Icons.lock,
                    isPassword: true,
                    iconColor: Colors.green.shade300,
                    myInt: 400,
                    showIcon: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          const Text('I agree to the terms & conditions'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyButton(
                        width: 120,
                        height: 40,
                        text: 'Sign Up',
                        color: Colors.green,
                        onPressed: () {
                          if (_formKey.currentState!.validate() && _isChecked) {
                            Navigator.pushNamed(context, '/payment');
                          }
                          else if (!_isChecked) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Please agree to the terms & conditions')),
                            );
                          }
                          else {
                            return Navigator.pushNamed(context, '/login');
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text('~ Or Sign In with ~', style: TextStyle(fontSize: 16),),
                ),
                const SocialButton(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Already have an account? Sign In'),
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
