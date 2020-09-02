import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Counteur()
)
);
class Counteur extends StatefulWidget{
  @override
  _CounteurState createState() => _CounteurState();
}

class _CounteurState extends State<Counteur> {
  bool isStart = false;
  String start = 'START';
  dynamic minute = 25;
  dynamic second = 60;
  dynamic time ='25:00';
  Timer _timer;
  dynamic i;
  var color1 = Color(0xF0F06FAE);
  var block = Color(0xFFF17DB7);
  var addTask = Color(0xFFCE5F95);
  void pauseTimer() {
    if (_timer != null) _timer.cancel();
  }
  void startTimer(){
    isStart = !isStart;
    if(isStart){
      setState(() {
        start = 'PAUSE';
      });
      _timer = new Timer.periodic(new Duration(seconds: 1), (timer) {
        if(second == 0 || second == 60){ minute -=1;second = 60;}
        if(time == '00:00') pauseTimer();
        else{
          if(second == 0 && minute == 0){
            time = '00;00';
          }else{
            second -=1;
            if(second <10 && minute <10){
              setState(() {
                time = '0$minute:0$second';
              });
            }else if(second <10){
              setState(() {
                time = '$minute:0$second';
              });
            }else if(minute <10){
              setState(() {
                time = '0$minute:$second';
              });
            }else{
              setState(() {
                time = '$minute:$second';
              });
            }
          }
        }
      });
    }else{
      pauseTimer();
      setState(() {
        start = 'START';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        title: Text('Smart Focus'),
        actions: [
          Icon(Icons.more_vert),
        ],
        backgroundColor: color1,
      ),
      body:
        Container(
            margin: EdgeInsets.all(30),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: block,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed:(){
                          pauseTimer();
                          setState(() {
                            color1 = Color(0xF0F06FAE);
                            block = Color(0xFFF17DB7);
                            addTask = Color(0xFFCE5F95);
                            isStart = false;
                            start = 'START';
                            minute = 25;
                            second = 60;
                            time = '25:00';
                          });
                        } ,
                        child: Text('Pomodoro',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                    ),
                    FlatButton(
                        onPressed:(){
                          pauseTimer();
                          setState(() {
                            color1 = Color(0xFF4CA6A9);
                            block = Color(0xFF55B9BC);
                            addTask = Color(0xFF408C8F);
                            isStart = false;
                            start = 'START';
                            minute = 5;
                            second = 60;
                            time = '05:00';
                          });
                        } ,
                        child: Text('Short Break',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                    ),
                    FlatButton(
                        onPressed:(){
                          pauseTimer();
                          setState(() {
                            color1 = Color(0xFF498FC1);
                            block = Color(0xFF509ED6);
                            addTask = Color(0xFF4282AF);
                            isStart = false;
                            start = 'START';
                            minute = 15;
                            second = 60;
                            time = '15:00';
                          });
                        } ,
                        child: Text('Long Break',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                    )
                  ],
                ),
                Container(
                  height: 200,
                  alignment: Alignment(0.0, 0.0),
                  child: Text('$time',
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.only(top: 15,bottom: 15,left: 35,right: 35),
                    onPressed:(){
                      startTimer();
                    } ,
                    child: Text('$start',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
              Container(
                margin: EdgeInsets.all(30),
                child:DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child:
                      Container(
                          alignment: Alignment(0.0, 0.0),
                          height: 50,
                          width: double.infinity,
                          color: addTask,
                          child: Text('+ Add Task',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ),
                  )
              ),
              ],
            ),
        ),
    );
  }
}
