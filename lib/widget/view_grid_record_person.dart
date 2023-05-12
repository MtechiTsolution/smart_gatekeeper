import 'package:flutter/material.dart';

// class Record_person extends StatelessWidget {
//   const Record_person({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Card(
//
//           child: Row(
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundColor: Colors.red,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8), // Border radius
//                   child: ClipOval(child: Image.network('imageUrl')),
//                 ),
//               ),
//               Text("Mujahid Husain")
//             ],
//           ),
//         )
//     );
//   }
// }
Widget getCardItem_record_person() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/opendoor.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),

              ],
            ),
          ],
        ),
      ),
    ),
  );
}