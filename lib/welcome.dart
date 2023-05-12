import 'package:flutter/material.dart';

import 'createaccount.dart';


class welcome extends StatefulWidget {
  const welcome ({Key? key}) : super(key: key);

  @override
  State<welcome > createState() => _welcomneState();
}

class _welcomneState extends State<welcome> {
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
            Text("WELCOME",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              SizedBox(height: 50,),
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
              SizedBox(height: 40,),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 48,right: 48,top: 10,bottom: 10),
                  child: Text('LOGIN',style:TextStyle(fontSize: 22),),
                ),
              ),
              SizedBox(height: 40,),
              const Text("Forget Password"),
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
                          child: const Text("Don't have an account ?"),
                        )),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Create_Acount()));

                              },
                              child: const Text("Create Account",style: TextStyle(fontSize: 14,color: Colors.green,fontWeight: FontWeight.bold),)),
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
