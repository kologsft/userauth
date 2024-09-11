import 'package:flutter/material.dart';
import '../formfields.dart';
import '../main.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();

}

class _VerifyOTPState extends State<VerifyOTP> {
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
                      'Enter Your OTP',
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
                        'Enter the 4 digits sent to your email, Do Not Share this Code with anyone',
                        style: TextStyle(
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MyTextField(
                        //icon: Icons.done,
                        iconColor: Colors.green.shade300,
                        labelText: '',
                        keyboardType: TextInputType.phone,
                        myInt: 80,
                        showIcon: false,
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MyTextField(
                        //icon: Icons.done,
                        iconColor: Colors.green.shade300,
                        labelText: '',
                        keyboardType: TextInputType.phone,
                        myInt: 80,
                        showIcon: false,
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MyTextField(
                        //icon: Icons.done,
                        iconColor: Colors.green.shade300,
                        labelText: '',
                        keyboardType: TextInputType.phone,
                        myInt: 80,
                        showIcon: false,
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MyTextField(
                        //icon: Icons.done,
                        iconColor: Colors.green.shade300,
                        labelText: '',
                        keyboardType: TextInputType.phone,
                        myInt: 80,
                        showIcon: false,
                      )
                  ),
                ],
              ),
              const SizedBox(height: 20),
              MyButton(
                width: 300,
                  height: 40,
                  text: 'Verify now',
                  color: Colors.green,
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context)=> const Reset()
                    )
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

