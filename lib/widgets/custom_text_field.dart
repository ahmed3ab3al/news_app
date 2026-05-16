import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String label;
  final String? hint;
  final bool obsecure;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? floatingLabelStyle;
  final ValueChanged<String>? onSubmited;
  final bool? filled;
  final Color? filledColor;
  final Color? cursorColor;
  final InputBorder border;
  final TextInputType type;
  final TextEditingController controller;
  final TextInputAction? action;
  final FormFieldValidator validator;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onchange;
  final bool isReadOnly;
  const CustomField({
    this.floatingLabelStyle,
    super.key,
    required this.controller,
    required this.validator,
    required this.border,
    required this.type,
    required this.label,
    required this.prefixIcon,
    this.onTap,
    this.obsecure = false,
    this.onchange,
    this.isReadOnly = false,
    this.action,
    this.suffixIcon,
    this.hint,
    this.hintStyle,
    this.labelStyle,
    this.filled,
    this.filledColor,
     this.cursorColor, this.onSubmited,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor:cursorColor,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        hintText: hint,
        labelStyle: labelStyle,
        hintStyle: hintStyle,
        filled: filled,
        fillColor: filledColor,
        prefixIcon: Icon(prefixIcon),

        labelText: label,
        focusedBorder: border,
        enabledBorder: border,
        focusedErrorBorder: border,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        floatingLabelStyle: floatingLabelStyle,
      ),
      onTap: onTap,

      onChanged: onchange,
      onFieldSubmitted:onSubmited ,
      obscureText: obsecure,
      readOnly: isReadOnly,
      keyboardType: type,
      controller: controller,
      validator: validator,
      textInputAction: action,
    );
  }
}
