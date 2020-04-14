import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:state(),
  ));
}

// Not used, but in case you want to go through it,
// I created login form  (Username, password)

class Stateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Application '),
        backgroundColor: Colors.green,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.teal[200],
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3.0,
                          fontSize: 18.0))),
              SizedBox(height: 10),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3.0,
                          fontSize: 18.0))),
              RaisedButton(
                onPressed: () {
                  print('clicked');
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                padding: EdgeInsets.all(10.0),
                textColor: Colors.white,
                hoverColor: Colors.orange,
              ),

            ],
          ),
        ),
      ),
    );
  }



}

// CLick Counter

class state extends StatefulWidget{
  @override
  _state createState() => _state();

}


// ignore: camel_case_types
class _state extends State<state>{

  int counter =0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
       body: Column(
         children: <Widget>[

           Center(
              child: Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),

              ),
           ),
            SizedBox(height: 10.0,),
           RaisedButton(
             onPressed: () {
               setState(() {

                 //check if counter have reach 5 then reset to 0
                if(counter < 5){
                  counter +=1;
                }else{
                  setState(() {
                    counter =0;
                  });
                }
               });
             },
             child: Text(
               'CState'
             ),
           )
         ],
       ),
    );
  }

}