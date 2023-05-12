import 'package:flutter/material.dart';
import 'package:smart_gatekeeper/person_record.dart';
import 'package:smart_gatekeeper/show_history.dart';
import 'package:smart_gatekeeper/widget/placeholder_dialog.dart';

import 'add_person.dart';
import 'createaccount.dart';


class Processing extends StatefulWidget {
  const Processing ({Key? key}) : super(key: key);

  @override
  State<Processing > createState() => _Processing();
}

class _Processing extends State<Processing> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/back2.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: SizedBox()),
              Text("Smart GateKeeper",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              SizedBox(height: 50,),

              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (ctx) => PlaceholderDialog(

                            icon: Image.asset(
                              'assets/opendoor.png',
                              width: 105,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            // icon: Icon(
                            //   Icons.add_circle,
                            //   color: Colors.teal,
                            //   size: 80.0,
                            // ),
                            title: 'Open The Door',
                            message: 'Are you know this person? if yes ! so please open the door ,He/She want to meet you',
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(ctx).pop(),
                                child: Text('OPEN DOOR',style: TextStyle(fontSize: 20  ,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(35)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0, 20),
                                blurRadius: 30,
                                spreadRadius: -5,
                              ),
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.purple.shade200,
                                  Colors.purple.shade300,
                                  Colors.purple.shade500,
                                  Colors.purple.shade500,
                                ],
                                stops: const [
                                  0.1,
                                  0.3,
                                  0.9,
                                  1.0
                                ])),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 20),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Image.asset(
                                'assets/opendoor.png',
                                width: 105,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                                SizedBox(width: 10,),
                                Icon(Icons.arrow_forward,color: Colors.white,)
                            ],),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("Open the Door",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                          )
                        ],),


                      ),
                    ),
                    InkWell(
                     onTap: (){
                       // Navigator.of(context).pop();
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Person_record()));

                     },

                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(35)),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, 20),
                                blurRadius: 30,
                                spreadRadius: -5,
                              ),
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.pink.shade200,
                                  Colors.pink.shade300,
                                  Colors.pink.shade500,
                                  Colors.pink.shade500,
                                ],
                                stops: const [
                                  0.1,
                                  0.3,
                                  0.9,
                                  1.0
                                ])),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/recordperson.png',
                                  width: 100,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 15,),
                                Icon(Icons.arrow_forward,color: Colors.white,)
                              ],),
                          ),
                          const Text(
                            "Person Record",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],),

                      ),
                    ),
                  ],),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context) => Add_person()));

                      },

                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(35)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0, 20),
                                blurRadius: 30,
                                spreadRadius: -5,
                              ),
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.deepOrange.shade100,
                                  Colors.deepOrange.shade200,
                                  Colors.deepOrange.shade300,
                                  Colors.deepOrange.shade400,
                                ],
                                stops: const [
                                  0.1,
                                  0.3,
                                  0.9,
                                  1.0
                                ])),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/addperson.png',
                                  width: 105,
                                  height: 74,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 15,),
                                Icon(Icons.arrow_forward,color: Colors.white,)
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Add Person",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                          )
                        ],),

                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Show_history()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 220,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(35)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0, 20),
                                blurRadius: 30,
                                spreadRadius: -5,
                              ),
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.lightBlue.shade200,
                                  Colors.lightBlue.shade300,
                                  Colors.lightBlue.shade500,
                                  Colors.lightBlue.shade500,
                                ],
                                stops: const [
                                  0.1,
                                  0.3,
                                  0.9,
                                  1.0
                                ])),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/history.png',
                                  width: 90,
                                  height: 74,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 10,),
                                Icon(Icons.arrow_forward,color: Colors.white,)
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("Show History",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                          )
                        ],),

                      ),
                    ),

                  ],),
              ],),

              Expanded(
                  flex: 1,
                  child: SizedBox()),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Divider(height: 5,thickness: 3, color: Colors.greenAccent.shade100,),
               ),
          Padding(
            padding: const EdgeInsets.all(16.0),

            child: Divider(height: 5,thickness: 3, color: Colors.deepOrangeAccent.shade100,),
          ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(height: 5,thickness: 3, color: Colors.greenAccent.shade100,),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/logoutt.jpeg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    )
                  ],
                ),
              ),
            ],),
        ),
      ),
    );
  }
}
