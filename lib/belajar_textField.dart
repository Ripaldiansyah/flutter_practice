import 'package:flutter/material.dart';

class belajarTextFields extends StatefulWidget {
  const belajarTextFields({super.key});

  @override
  State<belajarTextFields> createState() => _belajarTextFieldsState();
}

class _belajarTextFieldsState extends State<belajarTextFields> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              textField(false, 10),
              prefixText(false, 30),
              password(true, 20),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }

  TextField textField(bool password, int maxLength) {
    return TextField(
      decoration: InputDecoration(
          labelText: "nama",
          hintText: "Nama Lengkapnyaa yaa",
          labelStyle: TextStyle(fontFamily: "Roboto"),
          icon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          prefixIcon: Icon(Icons.person_2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      obscureText: password,
      maxLength: maxLength,
      onSubmitted: (value) {
        setState(() {});
      },
      controller: controller,
    );
  }

  TextField password(bool password, int maxLength) {
    return TextField(
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Password kamu",
          fillColor: Colors.amber,
          filled: true,
          prefix: Container(
            width: 20,
            height: 20,
            child: Icon(Icons.ac_unit),
          ),
          labelStyle: TextStyle(fontFamily: "Roboto"),
          icon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          // prefixIcon: Icon(Icons.person_2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      obscureText: password,
      maxLength: maxLength,
      onSubmitted: (value) {
        setState(() {});
      },
      controller: controller,
    );
  }

  TextField prefixText(bool password, int maxLength) {
    return TextField(
      decoration: InputDecoration(
          // labelText: "nama",
          suffixText: "@gmail.com",
          prefixText: "eMAIL",
          icon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          prefixIcon: Icon(Icons.person_2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      obscureText: password,
      maxLength: maxLength,
      onSubmitted: (value) {
        setState(() {});
      },
      controller: controller,
    );
  }
}
