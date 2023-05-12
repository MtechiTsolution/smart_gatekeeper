import 'package:flutter/material.dart';
import 'package:smart_gatekeeper/processing.dart';
import 'package:smart_gatekeeper/welcome.dart';

class Create_Acount extends StatefulWidget {
  const Create_Acount({Key? key}) : super(key: key);

  @override
  State<Create_Acount> createState() => _Create_AcountState();
}

class _Create_AcountState extends State<Create_Acount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              Text("JOIN US",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              SizedBox(height: 30,),
              Text("Keep Security High",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      suffixIcon: IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {
                            // debugPrint('222');
                          })
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      suffixIcon: IconButton(
                          icon: Icon(Icons.mail),
                          onPressed: () {
                            // debugPrint('222');
                          })
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      filled: true,
                      suffixIcon: IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {
                            // debugPrint('222');
                          })
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      suffixIcon: IconButton(
                          icon: Icon(Icons.password),
                          onPressed: () {
                            // debugPrint('222');
                          })
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      filled: true,
                      suffixIcon: IconButton(
                          icon: Icon(Icons.lock),
                          onPressed: () {
                            // debugPrint('222');
                          })
                  ),
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Processing()));
                },
                style: ButtonStyle(

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.black)
                        )
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 48,right: 48,top: 10,bottom: 10),
                  child: Text('JION US NOW',style:TextStyle(fontSize: 22),),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: const Text("Have an account ?"),
                        )),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
                              },

                              child: const Text("Login",style: TextStyle(fontSize: 14,color: Colors.green,fontWeight: FontWeight.bold),)),
                        )),
                  ],
                ),
              ),
            ],),
        ),
      ),
    );
  }
}
