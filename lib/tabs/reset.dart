import 'package:flutter/material.dart';
import '../formfields.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();

}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SizedBox(
          width: 450,
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
                      'Reset Password',
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
                        'Enter your new password, password must at least contain one special letter (@,#,&,%)',
                        style: TextStyle(
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child:  MyTextField(
                  labelText: 'Enter new password',
                  icon: Icons.lock,
                  isPassword: true,
                  iconColor: Colors.green.shade300,
                  myInt: 400, showIcon: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:  MyTextField(
                  labelText: 'Confirm Password',
                  icon: Icons.lock,
                  isPassword: true,
                  iconColor: Colors.green.shade300,
                  myInt: 400, showIcon: true,
                ),
              ),
              const SizedBox(height: 20,),
              MyButton(
                height: 40,
                  width: 300,
                  text: 'Reset now',
                  color: Colors.green,
                  onPressed: (){}
              ),

            ],
          ),
        ),
      ),
    );
  }
}

