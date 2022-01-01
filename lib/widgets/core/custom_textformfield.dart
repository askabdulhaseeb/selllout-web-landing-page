import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.validator,
    this.initialValue,
    this.hint = '',
    this.color,
    this.contentPadding,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength,
    this.showPrefixIcon = true,
    this.readOnly = false,
    this.autoFocus = false,
    this.textAlign = TextAlign.start,
    this.border,
    Key? key,
  }) : super(key: key);
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final bool showPrefixIcon;
  final String? Function(String? value)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final Color? color;
  final String? initialValue;
  final String? hint;
  final bool readOnly;
  final bool autoFocus;
  final TextAlign textAlign;
  final InputBorder? border;
  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: widget.color ?? Colors.grey[300],
      ),
      child: TextFormField(
        initialValue: widget.initialValue,
        readOnly: widget.readOnly,
        keyboardType: widget.maxLines! > 1
            ? TextInputType.multiline
            : widget.keyboardType ?? TextInputType.text,
        textInputAction: widget.maxLines! > 1
            ? TextInputAction.newline
            : widget.textInputAction ?? TextInputAction.next,
        autofocus: widget.autoFocus,
        textAlign: widget.textAlign,
        onChanged: widget.onChanged,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        maxLength: widget.maxLength,
        validator: (String? value) => widget.validator!(value),
        cursorColor: Theme.of(context).colorScheme.secondary,
        decoration: InputDecoration(
          fillColor: widget.color ?? Colors.grey[300],
          contentPadding: widget.contentPadding ??
              const EdgeInsets.symmetric(horizontal: 12),
          hintText: widget.hint,
          hintStyle: widget.hint!.length > 15
              ? const TextStyle(fontSize: 14)
              : const TextStyle(fontSize: 15),
          focusColor: Theme.of(context).primaryColor,
          border: widget.border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
        ),
      ),
    );
  }
}
