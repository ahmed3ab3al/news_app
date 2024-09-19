import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final TextInputType type;
  final GestureTapCallback? onTap;
  final Function(String)? onChanged;
  final FormFieldValidator? validate;
  final IconData? prefix;
  final String? label;
  final TextEditingController customController;
  final InputBorder? updateBorder;
  final Color? prefixColor;
  final TextStyle? floatingLabelStyle;

  const CustomTextFormFiled({
    super.key,
    this.label,
    required this.customController,
    required this.type,
    this.prefix,
    this.onTap,
    this.validate,
    this.updateBorder,
    this.prefixColor, this.floatingLabelStyle, this.onChanged,
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
      onChanged: onChanged,
      decoration: InputDecoration(
        floatingLabelStyle: floatingLabelStyle,
        labelText: label,
        prefixIcon: Icon(prefix),
        prefixIconColor: prefixColor,
            border: updateBorder ,
        focusedBorder: updateBorder
      ),
    );
  }
}
