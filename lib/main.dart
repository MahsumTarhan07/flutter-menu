import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    _MyAppState createState() => _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Name"
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter your email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                  print('Text: ${_textController.text}');
                  }
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}