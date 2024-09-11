import 'package:flutter/material.dart';
import '../formfields.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({super.key});

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();

}

class _ForgotPwdState extends State<ForgotPwd> {
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
                        'Forgot Password',
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
                          'Reset password link will be sent to your email, make sure enter a valid email',
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
                      myInt: 400,
                      showIcon: true,
                      validator:  (value){
                        if (value == null || value.isEmpty){
                          return 'Please enter Email';
                        }else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        else {
                          return null;
                        }

                      },
                    )
                ),
                const SizedBox(height: 20,),
                MyButton(
                  width: 300,
                    height: 40,
                    text: 'Send code',
                    color: Colors.green,
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.pushNamed(context, '/otp');
                      }
                      else {
                        return null;
                      }
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

