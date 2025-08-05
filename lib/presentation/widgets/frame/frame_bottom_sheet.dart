// import 'package:flutter/material.dart';
//
// class frameBottomSheet extends StatefulWidget{
//   final Widget item;
//
//   const frameBottomSheet({
//     Key? key,
//     required this.item,
//   }):super(
//     key : key,
//   );
//   @override
//   _FrameBottomSheetState createState() => _FrameBottomSheetState();
// }
//
// class _FrameBottomSheetState {
//
// }
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BottomSheet Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BottomSheetExample(),
//     );
//   }
// }
//
// class BottomSheetExample extends StatelessWidget {
//   void _openBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//             top: 16,
//             left: 16,
//             right: 16,
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 'Thông tin chi tiết',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 12),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Nhập nội dung',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 12),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('Đóng'),
//               ),
//               SizedBox(height: 12),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ví dụ BottomSheet'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _openBottomSheet(context),
//           child: Text('Mở BottomSheet'),
//         ),
//       ),
//     );
//   }
// }
