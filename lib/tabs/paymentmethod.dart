import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:userauth/formfields.dart';
import 'package:userauth/routes.dart';


class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String? selectedPaymentMethod = 'Cash';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 450,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
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
                const Text('Choose payment method', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text('Cash'),
                  leading: SvgPicture.asset('assets/cash.svg', width: 24, height: 24,),
                  trailing: Radio<String>(
                    value: 'Cash',
                    groupValue: selectedPaymentMethod,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPaymentMethod = value;
                      });
                    },
                  ),
                ),

                ListTile(
                  title: const Text('Paypal'),
                  leading: SvgPicture.asset(
                    'assets/paypal-svgrepo-com.svg',
                    height: 24,
                    width: 24,
                  ),
                  trailing: Radio<String>(
                    value: 'Paypal',
                    groupValue: selectedPaymentMethod,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPaymentMethod = value;
                      });
                    },
                  ),
                ),

                // Google Pay Option
                ListTile(
                  title: const Text('Google Pay'),
                  leading: SvgPicture.asset(
                    'assets/google.svg',
                    height: 24,
                    width: 24,
                  ),
                  trailing: Radio<String>(
                    value: 'Google Pay',
                    groupValue: selectedPaymentMethod,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPaymentMethod = value;
                      });
                    },
                  ),
                ),

                // Apple Pay Option
                ListTile(
                  title: const Text('Apple Pay'),
                  leading: SvgPicture.asset(
                    'assets/apple.svg',
                    height: 24,
                    width: 24,
                  ),
                  trailing: Radio<String>(
                    value: 'Apple Pay',
                    groupValue: selectedPaymentMethod,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPaymentMethod = value;
                      });
                    },
                  ),
                ),

                //const SizedBox(height: 20),

                //MyButton(text: 'Add new card', color: Colors.transparent, onPressed: (){}, width: 400, height: 40),
                const SizedBox(height: 20),

                // Apply Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                      text: 'Pay now',
                      color: Colors.green,
                      onPressed: () {
                        // Use a Builder to get the correct Scaffold context
                        showModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              //height: 300,
                           const Billing(),

                          constraints: const BoxConstraints(
                            maxWidth: 600,
                            //maxHeight: 900,
                          ),
                          elevation: 2,
                        );
                      },
                      width: 400,
                      height: 40,
                    )

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
