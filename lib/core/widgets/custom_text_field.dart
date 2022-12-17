import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, this.onChanged}) : super(key: key);

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: ((data) {
        if (data!.isEmpty) {}
        return 'filled is required';
      }),
      onChanged: onChanged,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 14, 40, 10),
        hintStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'metropolis',
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffE6EAEE),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
