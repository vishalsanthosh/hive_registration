import 'package:flutter/material.dart';

class LoginHive extends StatefulWidget {

  @override
  State<LoginHive> createState() => _LoginHiveState();
}

class _LoginHiveState extends State<LoginHive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("USERNAME:"),
            SizedBox(height: 5,),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),),
              
            ),
            SizedBox(
              height: 15,
        
            ),
            Text("PASSWORD:"),
            SizedBox(height: 5,),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              
            }, child: Text("LOG IN"))
          ],
        ),
      ),
    );
    
  }
}