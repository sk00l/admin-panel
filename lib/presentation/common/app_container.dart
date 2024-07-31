// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppConatiner extends StatefulWidget {
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final Icon? icon;

  const AppConatiner({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color,
    this.icon,
  });

  @override
  State<AppConatiner> createState() => _AppConatinerState();
}

class _AppConatinerState extends State<AppConatiner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius!),
        color: Colors.white,
      ),
      child: Row(
        children: [
          widget.icon!,
        ],
      ),
    );
  }
}
