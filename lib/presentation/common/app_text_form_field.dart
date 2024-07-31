import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppTextFormField extends StatefulWidget {
  static const int maxLENGTH = 500;
  final int? maxLines;
  final int? minLines;
  final bool? readOnly;
  final String? title;
  final String? helperText;
  final bool isSecure;
  final int maxLength;
  final String? hint;
  final TextInputType? inputType;
  final String? initValue;
  final Color? backColor;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController? textEditingController;
  final String? Function(String? value)? validator;
  final Function(String)? onTextChanged;
  final Function(String)? onSaved;
  final bool isDateField;

  List<TextInputFormatter>? inputFormatters;

  AppTextFormField({
    super.key,
    this.readOnly,
    this.title,
    this.helperText,
    this.isSecure = false,
    this.maxLength = maxLENGTH,
    this.hint,
    this.inputType,
    this.initValue = '',
    this.backColor,
    this.suffix,
    this.prefix,
    this.textEditingController,
    this.validator,
    this.onTextChanged,
    this.onSaved,
    this.inputFormatters,
    this.isDateField = false,
    this.maxLines,
    this.minLines,
  });

  @override
  State<AppTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<AppTextFormField> {
  final _formKey = GlobalKey<FormState>();
  late bool _passwordVisibility;
  final FocusNode _focusNode = FocusNode();
  final Color _borderColor = const Color.fromARGB(255, 23, 65, 42);
  Color redError = Colors.red;
  Color primary = const Color.fromARGB(255, 75, 142, 75);
  double _borderSize = 0.7;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      // maxLines: widget.maxLines,
      // minLines: widget.minLines,
      onTap: widget.isDateField ? _selectDate : null,
      readOnly: widget.readOnly ?? false,
      focusNode: _focusNode,
      controller: widget.textEditingController,
      autocorrect: false,
      obscureText: !_passwordVisibility,
      keyboardType: widget.inputType,
      cursorColor: Colors.black,
      validator: widget.validator, // Use the passed validator function
      style: const TextStyle(color: Color.fromARGB(255, 75, 142, 75)),
      maxLength: widget.maxLength,
      inputFormatters: widget.inputFormatters,
      onChanged: (text) {
        widget.onTextChanged?.call(text);
      },
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        counterText: "",
        hintStyle: const TextStyle(color: Color.fromARGB(255, 75, 142, 75)),
        floatingLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 75, 142, 75),
            fontWeight: FontWeight.w400),
        labelText: widget.title,
        labelStyle: const TextStyle(color: Color.fromARGB(255, 75, 142, 75)),
        helperText: widget.helperText,
        suffixIcon: getSuffixIcon(),
        prefixIcon: widget.prefix,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Widget? getPasswordSuffixIcon() {
    return IconButton(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      padding: EdgeInsets.zero,
      icon: _passwordVisibility
          ? const FaIcon(FontAwesomeIcons.eye)
          : const FaIcon(FontAwesomeIcons.eyeSlash),
      color: Colors.black,
      onPressed: () {
        setState(() {
          _passwordVisibility = !_passwordVisibility;
        });
      },
    );
  }

  Widget? getSuffixIcon() {
    return widget.isSecure ? getPasswordSuffixIcon() : widget.suffix;
  }

  @override
  void initState() {
    super.initState();
    _passwordVisibility = !widget.isSecure;

    _focusNode.addListener(() {
      setState(() {
        _borderSize = _focusNode.hasFocus ? 1.7 : 1.2;
      });
    });
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        widget.textEditingController?.text = picked.toString().split(" ")[0];
      });
    }
  }
}
