import 'package:flutter/material.dart';
import 'package:task2/text-modren.dart';
import 'about.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Form App',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController fromController = TextEditingController();
  String displayText = "";
  String imgUrl ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcPrsBlh4r2gBX6xnX9eHSsxH__CPaXce1vg&s";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('App Title'),
        centerTitle: false,
          leading: CircleAvatar(
            child: Image.network(imgUrl),
        ),
        actions: [
          IconButton(onPressed: ()=>{
              Navigator.push(context,
               MaterialPageRoute(
                builder: (context)=>About())
                )
          },
         icon: Icon(Icons.notification_add))
         ],
         elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextModren(text: "Welcome "),
            Text("Enter your full name:"),
          TextField(controller: fullNameController,onChanged: (value) => setState(() {
            displayText = value;
           }),),
          Text("Enter your age:"),
          TextField(controller: ageController,onChanged: (value) => setState(() { 
            displayText = value;
          }),),
          Text("Enter your from:"),
          TextField(controller: fromController,onChanged: (value) => setState(() {
            displayText = value;
           }),),
          Text("$displayText"),
          ],
        ),
      ),

    );
  }
}
