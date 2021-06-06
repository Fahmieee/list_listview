import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {




  List <Widget> widgets = [];
  int counter = 1;

  _MyAppState(){
    for(int i = 0; i < 15; i++)
    widgets.add(Text("Aku ke " +
        i.toString(),
      style: TextStyle(fontSize: 50
      ),));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar (
          title: Text("Hi"),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                    child: Text("Tambah"),
                    onPressed:(){
                      setState(() {
                        widgets.add(Text("Tambah Data Ke " + counter.toString() ));
                        counter++;
                      });
                    }),
                MaterialButton(
                    child: Text("Hapus"),
                    onPressed: (){
                      setState(() {
                        widgets.removeLast();
                      });
                    })
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
