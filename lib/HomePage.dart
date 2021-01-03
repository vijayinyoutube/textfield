import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter TextFormFields"),
      ),
      body: buildTextFields(),
    );
  }

  Widget buildTextFields() => Padding(
        padding: const EdgeInsets.all(35),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTextField1(),
              heightSpacer(15),
              buildTextField2(),
              heightSpacer(15),
              buildTextField3(),
              heightSpacer(15),
              buildTextField4(),
              heightSpacer(15),
              buildTextField5(),
            ],
          ),
        ),
      );

  Widget buildTextField1() => TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.person,
            color: Colors.teal,
          ),
          hintText: 'Enter your Name'));

  Widget buildTextField2() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.orange,
          ),
          hintText: "Enter your Name",
          hintStyle: TextStyle(color: Colors.orange),
        ),
      );

  Widget buildTextField3() => TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          prefixIcon: Icon(Icons.person, color: Colors.blue),
          hintText: "Enter your Name",
          hintStyle: TextStyle(color: Colors.blue),
          filled: true,
          fillColor: Colors.blue[50],
        ),
      );

  Widget buildTextField4() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.green,
          ),
          filled: true,
          fillColor: Colors.green[50],
          labelText: "Enter your Name",
          labelStyle: TextStyle(color: Colors.green),
        ),
      );

  Widget buildTextField5() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(5.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          filled: true,
          fillColor: Colors.red[50],
          labelText: "Enter your Name",
          labelStyle: TextStyle(color: Colors.red),
        ),
      );

  Widget heightSpacer(double myHeight) => SizedBox(height: myHeight);
}
