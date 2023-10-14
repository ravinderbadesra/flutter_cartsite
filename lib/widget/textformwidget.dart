import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final TextEditingController onController;

  TextFormWidget({
    super.key,
    required this.text,
    required this.iconData,
    required this.onController
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: onController,
        decoration: InputDecoration(
            prefixIcon: Icon(
              iconData,
              color: Colors.purple,
            ),
            fillColor: Color.fromARGB(183, 181, 236, 248),
            filled: true,
            hintText: text,
            hintStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
            )),
      ),
    );
  }
}
