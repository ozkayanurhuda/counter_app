import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Counter(),
  ));
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int num=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('COUNTER',
        style: TextStyle(
          fontSize: 25.0,
        ),),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(width: 15.0),
          Text('Add One More',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,

          ),
          ),
          SizedBox(width: 20.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                num+=1;
              });
            },
            child: Icon(Icons.add,
            size:50.0,
            ),
            backgroundColor: Colors.green[900],
          ),
        ],
      ),
      body: Padding(
        padding:EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'TOTAL:',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
              ),
              SizedBox(height: 30.0),
              Text(
                '$num',
                style:TextStyle(
                  color: Colors.green[900],
                  letterSpacing: 2.0,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}

