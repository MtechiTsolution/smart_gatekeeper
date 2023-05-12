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
Widget getCardItem() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 155,
        width: 155,
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/opendoor.png',
                  width: 130,
                  height: 110,
                  fit: BoxFit.cover,
                ),

              ],
            ),
            Container(
              decoration: const BoxDecoration(

                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7))),
              child: Text("Mujahid Hussain",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              padding: const EdgeInsets.all(12),
            )
          ],
        ),
      ),
    ),
  );
}