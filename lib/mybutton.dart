import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 final String text ;
final void Function()? ontap ;
 const  MyButton({super.key, 
  required this.text , 
  required this.ontap
  

  });

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(onPressed: ontap,
   style:ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 45),
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
backgroundColor: Theme.of(context).colorScheme.primary
   
   ), child: Text(text , style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
   
   );
  }
}
 // return GestureDetector(
// onTap: ontap,
// child: Container(
//  width: double.infinity,
//  height: 45,
//   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
//    color: Theme.of(context).colorScheme.primary,),
//   child: Center(child: Text(text)),
// ),
//     );