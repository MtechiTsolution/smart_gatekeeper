import 'package:flutter/material.dart';
import 'package:smart_gatekeeper/widget/person_record.dart';
import 'package:smart_gatekeeper/widget/view_record.dart';

class Person_record extends StatefulWidget {
  const Person_record({Key? key}) : super(key: key);

  @override
  State<Person_record> createState() => _Person_recordState();
}

class _Person_recordState extends State<Person_record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
             onTap: () {
                  // call click event
                           Navigator.push(context, MaterialPageRoute(builder: (context) => view_record()));
                },
                           child: getCardItem()
                        );

                      },
                    ),
                  ));
  }
}

