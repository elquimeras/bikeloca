import 'package:flutter/material.dart';
import './drawer.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseDb extends StatelessWidget {

  final databaseReference = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
            title: Text('Preguntas'),
            ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Crear Pregunta'),
                      onPressed: () {
                        createRecord();
                      },
                  ),
                  SizedBox(width: 25, height: 20),
                  RaisedButton(
                      child: Text('Pregunta 1'),
                      onPressed: () {},
                  ),
                  RaisedButton(
                      child: Text('Pregunta 2'),
                      onPressed: () {},
                  ),
                  RaisedButton(
                      child: Text('Pregunta N'),
                      onPressed: () {},
                  ),
                  // RaisedButton(
                  //     child: Text('View Record'),
                  //     onPressed: () {
                  //       getData();
                  //     },
                  // ),
                  // RaisedButton(
                  //     child: Text('Udate Record'),
                  //     onPressed: () {
                  //       updateData();
                  //     },
                  // ),
                  // RaisedButton(
                  //     child: Text('Delete Record'),
                  //     onPressed: () {
                  //       deleteData();
                  //     },
                  // ),
                ],
            )
        ), //center
    );
  }

  var questionNumber = 0;
  void createRecord(){
    databaseReference.child('questions/$questionNumber').set({
      'title': 'Pregunta $questionNumber',
      'description': 'cuerpo'
    });
    questionNumber++;
    getData();
  }
  
  var questions;
  void getData(){
    databaseReference.once().then((DataSnapshot snapshot) {
      questions = snapshot.value;
      
      print('Data : ${snapshot.value}');
    });
  }

  void updateData(){
    databaseReference.child('1').update({
      'description': 'J2EE complete Reference'
    });
  }

  void deleteData(){
    databaseReference.child('1').remove();
  }
}