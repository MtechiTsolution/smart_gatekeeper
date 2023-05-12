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
        height: 80,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                "assets/recordperson.png",
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Expanded(child: SizedBox()),
            Container(

                child: Text("Muhammad abbas",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
            Expanded(child: SizedBox()),

            Align(

              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(left: 10),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Unknown",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.green),),
                ),
              ),
            )
          ],),



        ],),
      ),
    ),
  );
}