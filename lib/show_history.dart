import 'package:flutter/material.dart';
import 'package:smart_gatekeeper/widget/history.dart';


class Show_history extends StatefulWidget {
  const Show_history({Key? key}) : super(key: key);

  @override
  State<Show_history> createState() => _Show_historyState();
}

class _Show_historyState extends State<Show_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          child: getCardItem(),
      ),
    );
  }
}
