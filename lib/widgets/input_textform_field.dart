import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {super.key,
      required this.controller,
      required this.validator,
      required this.hintText,
      required this.lableText,
      required this.textName,this.prefixIcon});

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final String lableText;
  final String textName;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
           Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(textName),
          ),
          TextFormField(
            style: const TextStyle(color: Colors.black),
            onSaved: (String? value) {},
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: OutlineInputBorder(),
              hintText: hintText,
              labelText: lableText,
              labelStyle: TextStyle(color: Colors.black),
              hintStyle: TextStyle(color: Colors.black, fontSize: 16),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(
                    10.0,
                  ))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(
                    10.0,
                  ))),
            ),
          ),
        ],
      ),
    );
  }
}
