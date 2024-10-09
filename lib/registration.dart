import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RegistrationHive extends StatefulWidget {

  @override
  State<RegistrationHive> createState() => _RegistrationHiveState();
}

class _RegistrationHiveState extends State<RegistrationHive> {
  TextEditingController
   late Box box;
  String? username;
  int? password;
  @override
  void initState(){
    super.initState();
    box=Hive.box("New box");
  }

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
              onTap: (){
                setState(() {
                  box.put("username", "");
                });
              },
              decoration: InputDecoration(border: OutlineInputBorder(),),
              
            ),
            SizedBox(
              height: 15,
        
            ),
            Text("PASSWORD:"),
            SizedBox(height: 5,),
            TextField(
              onTap: () {
                setState(() {
                  box.put("password", value)
                });
              },
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text("Register"))
          ],
        ),
      ),
    );
  }
}