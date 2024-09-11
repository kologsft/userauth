import 'package:flutter/material.dart';

import 'formfields.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Billing Information',
//       home: BillingFormScreen(),
//     );
//   }
// }

class BillingFormScreen extends StatefulWidget {
  const BillingFormScreen({super.key});

  @override
  _BillingFormScreenState createState() => _BillingFormScreenState();
}

class _BillingFormScreenState extends State<BillingFormScreen> {
  final _formKey = GlobalKey<FormState>();

  String firstName = '';
  String surname = '';
  String street = '';
  String street2 = '';
  String city = '';
  String phone = '';
  String country = 'Ghana';  // Default country

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Billing Information'),
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const BillingSectionTitle(title: 'BILLING NAME'),
              BillingInputField(
                label: 'First name',
                onSaved: (value) => firstName = value!,
              ),
              BillingInputField(
                label: 'Surname',
                onSaved: (value) => surname = value!,
              ),
              const SizedBox(height: 20),
              const BillingSectionTitle(title: 'BILLING ADDRESS'),
              BillingInputField(
                label: 'Street',
                onSaved: (value) => street = value!,
              ),
              BillingInputField(
                label: 'Street',
                hintText: 'BLGD',
                onSaved: (value) => street2 = value!,
              ),
              BillingInputField(
                label: 'City/Town',
                onSaved: (value) => city = value!,
              ),
              BillingInputField(
                label: 'Phone',
                keyboardType: TextInputType.phone,
                onSaved: (value) => phone = value!,
              ),
              BillingInputField(
                label: 'Country/Region',
                initialValue: country,
                readOnly: true, // Default value as non-editable
              ),
              const SizedBox(height: 20),
              MyButton(
                  text: 'Submit',
                  color: Colors.green,
                  onPressed: (){
                    if (
                    _formKey.currentState!.validate()
                    ){
                       ScaffoldMessenger.of (context) .showSnackBar(
                           const SnackBar(
                             backgroundColor: Colors.blue,
                               content: Text('Successfully')));
                      //Navigator.pushNamed(context, '/routeName');
                    }
                  },
                  width: 400, height: 40
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BillingSectionTitle extends StatelessWidget {
  final String title;

  const BillingSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey,
        fontSize: 14,
      ),
    );
  }
}

class BillingInputField extends StatelessWidget {
  final String label;
  final String? hintText;
  final String? initialValue;
  final bool readOnly;
  final TextInputType? keyboardType;
  final FormFieldSetter<String>? onSaved;

  const BillingInputField({super.key,
    required this.label,
    this.hintText,
    this.initialValue,
    this.readOnly = false,
    this.keyboardType,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6),
          TextFormField(
            initialValue: initialValue,
            keyboardType: keyboardType ?? TextInputType.text,
            readOnly: readOnly,
            decoration: InputDecoration(
              hintText: hintText ?? '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onSaved: onSaved,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter $label';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
