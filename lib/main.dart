import 'package:flutter/material.dart';

void main() {
  List<String> notes = [
    "Venky",
    "Sunny",
    "Pooja",
    "Abhinav",
    "Kiran",
    "Vaishnavi",
    "Naveen",
    "Bhupad",
    "Sanghati",
    "Poornima",
    "Lakshmi",
    "Santosh",
    "Prakash",
    "Sakti"
  ];

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Appbrowzer Team"),
      ),
      body: Container(
          color: Colors.white10,
          padding: EdgeInsets.all(16.0),
          child: HomePage(notes)
      ),
    ),
  ));
}

class HomePage extends StatelessWidget {
  final List<String> notes;

  HomePage(this.notes);

  @override
  Widget build(BuildContext context) {
    //TODO build ListView here
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, pos) {
        return Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: Text(notes[pos], style: TextStyle(
                  fontSize: 14.0,
                  height: 1,
                ),),
              ),
            )
        );
      },
    );
  }
}