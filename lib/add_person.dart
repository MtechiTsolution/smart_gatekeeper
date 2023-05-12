import 'package:flutter/material.dart';
import 'package:smart_gatekeeper/widget/progressbar.dart';


class Add_person extends StatefulWidget {
  const Add_person({Key? key}) : super(key: key);

  @override
  State<Add_person> createState() => _Add_personState();
}

class _Add_personState extends State<Add_person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/back2.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Expanded(child: SizedBox()),
              Text("ADD PERSON",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                SizedBox(height: 20,),
              Container(

                margin: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Person Name',
                      filled: true,
                      suffixIcon: IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {
                            // debugPrint('222');
                          })
                  ),
                ),
              ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.cyanAccent,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
                 SizedBox(height: 30,),
                Icon(Icons.camera_alt_outlined,color: Colors.greenAccent,),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/textback.png"),
                          fit: BoxFit.cover),
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            textAlign:TextAlign.center,
                            "Dear user please wait, \n The camera is capturing your picture \n Thank you",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 19),),
                        ),
                      ],
                    )),
                Expanded(child: SizedBox()),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(

                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 48,right: 48,top: 10,bottom: 10),
                    child: Text('ADD PERSON',style:TextStyle(fontSize: 22),),
                  ),
                ),
                SizedBox(height: 40,),
            ],),
          ),

        ),
      ),
    );
  }
}
