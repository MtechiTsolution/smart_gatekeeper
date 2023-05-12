import 'package:flutter/material.dart';
import 'package:smart_gatekeeper/widget/person_record.dart';
import 'package:smart_gatekeeper/widget/view_grid_record_person.dart';

class view_record extends StatefulWidget {
  const view_record({Key? key}) : super(key: key);

  @override
  State<view_record> createState() => _Person_recordState();
}

class _Person_recordState extends State<view_record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
            ),
            itemCount: 90,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    // call click event
                  },
                  child: getCardItem_record_person(),
              );

            },
          ),
        ));
  }
}

