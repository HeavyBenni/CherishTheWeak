import 'package:flutter/material.dart';

class Band extends StatelessWidget {
  const Band({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
    );
}}