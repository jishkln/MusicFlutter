// import 'package:flutter/material.dart';

// class FunctionsApp {
//   Widget popupBtn() {
//     return PopupMenuButton<int>(
//       itemBuilder: (context) => [
//         // PopupMenuItem 1
//         PopupMenuItem(
//           value: 1,
//           child: Row(
//             children: const [
//               Icon(Icons.star),
//               SizedBox(
//                 width: 10,
//               ),
//               Text("Get The App")
//             ],
//           ),
//         ),
//         PopupMenuItem(
//           value: 2,
//           // row with two children
//           child: Row(
//             children: const [
//               Icon(Icons.chrome_reader_mode),
//               SizedBox(
//                 width: 10,
//               ),
//               Text("About")
//             ],
//           ),
//         ),
//       ],

//       offset: const Offset(0, 100),
//       color: Colors.grey,
//       elevation: 2,
//       // on selected we show the dialog box
//       onSelected: (value) {
//         // if value 1 show dialog
//         if (value == 1) {
//           _showDialog;
//           // if value 2 show dialog
//         } else if (value == 2) {
//           _showDialog;
//         }
//       },
//     );
//   }

//   void _showDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Alert!!"),
//           content: const Text("You are awesome!"),
//           actions: [
//             MaterialButton(
//               child: const Text("OK"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
