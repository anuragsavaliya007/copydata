import 'package:copydata/Dbhelper.dart';
import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  Dbhelper dbhelper = Dbhelper();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Copid data")),
      body: Center(
        child: ElevatedButton(onPressed: () {

          dbhelper.initDb();

        }, child: Text("Press me")
        ),
      ),

    );
  }


}
