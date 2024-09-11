import 'package:flutter/material.dart';
import '../formfields.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back))
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
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
                          'Enter the Email and the password you used during the sign up or '
                              'click on "forgot password" to create new one',
                          style: TextStyle(
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MyTextField(
                      icon: Icons.email,
                      iconColor: Colors.green.shade300,
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      myInt: 400, showIcon: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    )
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:  MyTextField(
                    labelText: 'Password',
                    icon: Icons.lock,
                    isPassword: true,
                    iconColor: Colors.green.shade300,
                    myInt: 400, showIcon: true,
                    validator: (value){
                      if (value ==null || value.isEmpty){
                        return 'please enter your password';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 30.0, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/forgotPassword');
                          },
                          child: const Text('Forgot password'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyButton(
                      width: 300,
                      height: 40,
                      text: 'LogIn',
                      color: Colors.green,
                      onPressed: (){
                        if (_formKey.currentState!.validate() ) {
                          Navigator.pushNamed(context, '/payment');
                        }
                        else {
                          return ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                duration: const Duration(seconds: 6),
                                backgroundColor: Colors.blue,
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    const Text('Wrong credential '),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, '/forgotPassword');
                                        },
                                        child: const Text(
                                          'forgot password',
                                          style: TextStyle(color: Colors.red),
                                        )),
                                    const Text('or '),
                                    TextButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, '/');
                                        },
                                        child: Text(
                                          'create an account',
                                          style: TextStyle(color: Colors.green.shade900),
                                        )),
                                  ],
                                )
                            ),
                          );
                        }
                      }
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text('~ Or Sign In with ~', style: TextStyle(fontSize: 16),),
                ),
                //SocialButton.appleButtonCircle((){})
                const SocialButton(),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text('Don\'t have an account? Sign Up'),
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

