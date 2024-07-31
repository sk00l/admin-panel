// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final double? height;
  final double? width;
  final String? title;
  final VoidCallback? onTap;
  final Color? borderColor;
  final Color? textColorColor;

  const AppButton({
    super.key,
    this.height,
    this.width,
    this.title,
    this.onTap,
    this.borderColor,
    this.textColorColor,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: widget.borderColor ?? Colors.red, width: 1),
        ),
        child: Center(
          child: Text(
            widget.title ?? '',
            style: TextStyle(
                color: widget.textColorColor ?? Colors.red, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
