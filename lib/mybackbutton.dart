import 'package:flutter/material.dart';

class Mybackbutton extends StatelessWidget {
  const Mybackbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pop(context),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration:  BoxDecoration( shape: BoxShape.circle,color: Theme.of(context).colorScheme.primary),
        child: const Icon(Icons.arrow_back),
      ),

    );
  }
}