import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText});
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// class custom_textfield extends StatelessWidget {
//   const custom_textfield({super.key, this.hintText});
//   final String? hintText;

//   @override
//   Widget build(BuildContext context) {
//     Widget textfield = TextFormField(
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: const TextStyle(
//           color: Colors.grey,
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: const BorderSide(
//             color: Colors.blue,
//             width: 2.0,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: const BorderSide(
//             color: Colors.grey,
//             width: 2.0,
//           ),
//         ),
//       ),
//     );
    
//   }
// }
