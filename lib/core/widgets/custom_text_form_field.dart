import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final TextInputType type;
  final GestureTapCallback? onTap;
  final FormFieldValidator? validate;
  final IconData? prefix;
  final String? label;
  final TextEditingController customController;

  const CustomTextFormFiled({
    super.key,
    this.label,
    required this.customController,
    required this.type,
    this.prefix,
    this.onTap,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "$label can't be empty";
        }
        return null;
      },
      controller: customController,
      keyboardType: type,
      onTap: onTap,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        floatingLabelStyle: const TextStyle(color: Colors.blue),
        labelText: label,
        prefixIcon: Icon(prefix),
        prefixIconColor: Colors.blue,
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
