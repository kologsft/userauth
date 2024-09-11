import 'package:flutter/material.dart';
class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            children: [
              Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      BillingTextFields(hintText: 'XXX XXX XXX XXX', prefixText: 'Number:', padding: 60,),

                     BillingTextFields(hintText: 'mm / yyyy', prefixText: 'Expires:', padding: 65,),

                      BillingTextFields(hintText: 'Security code', prefixText: 'CVV:', padding: 80,)


                    ],
                  ),
                ),
              ),

              const SizedBox(height: 50,),

              const Row(
                children: [
                  Text('BILLING NAME', style: TextStyle(letterSpacing: 2, fontSize: 16, color: Colors.black87),),
                ],
              ),

              Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      BillingTextFields(hintText: 'John', prefixText: 'First Name', padding: 50,),

                     BillingTextFields(hintText: 'Smith', prefixText: 'Surname', padding: 60,),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,),

              const Row(
                children: [
                  Text('BILLING ADDRESS', style: TextStyle(letterSpacing: 2, fontSize: 16, color: Colors.black87),),
                ],
              ),

              Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      BillingTextFields(hintText: 'Commercial street', prefixText: 'Street', padding: 60,),
                      BillingTextFields(hintText: 'KologSoft', prefixText: 'Street', padding: 60,),
                      BillingTextFields(hintText: 'Bolgatanga', prefixText: 'City/Town', padding: 35,),
                      BillingTextFields(hintText: '0245 xxx xxx', prefixText: 'Phone', padding: 60,),
                      BillingTextFields(hintText: 'Upper East', prefixText: 'Region', padding: 60,),
                      BillingTextFields(hintText: 'Ghana', prefixText: 'Country', padding: 55,),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}



class BillingTextFields extends StatelessWidget {
  final String hintText;
  final String prefixText;
  final int padding;
  const BillingTextFields({super.key, required this.hintText, required this.prefixText, required this.padding});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Padding(
          padding:  EdgeInsets.only(left: 8.0, right: padding.toDouble()),
          child: Text(prefixText),
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
      ),
    );
  }
}
