import 'package:flutter/material.dart';

enum EmailType{
  preview,
  threaded,
  primaryThreaded,
}

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    );
  }
}
