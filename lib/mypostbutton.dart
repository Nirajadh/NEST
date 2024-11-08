import 'package:flutter/material.dart';

class Mypostbutton extends StatelessWidget {
  final void Function()? ontap;
  const Mypostbutton({super.key,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: ontap,
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
     
     color: Theme.of(context).highlightColor),
    
    child: const Icon(Icons.done),),
),


    );
  }
}