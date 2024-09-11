import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final IconData? icon;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Color iconColor;
  final int myInt;
  final bool showIcon;
  final String? Function(String?)? validator;

  const MyTextField({
    super.key,
    required this.labelText,
    this.icon,
    this.isPassword = false,
    required this.iconColor,
    this.controller,
    this.keyboardType = TextInputType.text,
    required this.myInt,
    required this.showIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: myInt.toDouble()),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          labelText: labelText,
          prefixIcon: showIcon ? Icon(icon, color: iconColor) : null,
          border: const OutlineInputBorder(),
        ),
        validator: validator,
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final int width;
  final int height;
  final Function () onPressed;
  const MyButton({super.key, required this.text, required this.color, required this.onPressed, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height.toDouble(),
      width: width.toDouble(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
         primary: color,
        ),
        child:  Text(text, style: const TextStyle(fontSize: 20,),),
      ),
    );
  }
}

// class SocialButtons extends StatelessWidget {
//   final FaIcon iconData;
//   final Color iconColor;
//   final int iconSize;
//   final Function () onTap;
//   const SocialButtons(
//       {
//         super.key,
//         required this.iconData,
//         required this.iconColor,
//         required this.iconSize,
//         required this.onTap,
//         required IconData icon,
//       }
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       color: iconColor,
//         iconSize: iconSize.toDouble(),
//         onPressed: onTap,
//         icon: iconData
//     );
//   }
// }

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.googlePlus,color: Colors.red,)
          ),

          const SizedBox(width: 10),

          IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,)),

          const SizedBox(width: 10),

          IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.apple, color: Colors.grey,)),

          const SizedBox(width: 10),

          IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.github, color: Colors.blueGrey,)),

          const SizedBox(width: 10),

          IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.docker)),

        ],
      ),
    );
  }
}
