import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Counteur()
)
);
class Counteur extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.purpleAccent[200],
      appBar: AppBar(
        title: Text('Smart Focus'),
        actions: [
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purpleAccent[200],
      ),
      body: /*Center(
        child:
        /*Text('Pomorodo',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),*/
        /*Icon(
          Icons.airline_seat_flat,
          color: Colors.lightBlue,
          size: 50.0,
        )*/
        /*FlatButton(
          onPressed:(){
            print('you click me');
          } ,
          child: Text('Pomorodo',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          )
        )*/
        FlatButton.icon(
            onPressed: null,
            icon: Icon(
              Icons.timelapse
            ),
            label: Text('Pomorodo',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )
        )
      ),*/
        Container(
            margin: EdgeInsets.all(30),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purpleAccent[100],
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
                          print('you click me');
                        } ,
                        child: Text('Pomodoro',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                    ),
                    FlatButton(
                        onPressed:(){
                          print('you click me');
                        } ,
                        child: Text('Short Break',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                    ),
                    FlatButton(
                        onPressed:(){
                          print('you click me');
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
                  child: Text('00:00',
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.only(top: 15,bottom: 15,left: 35,right: 35),
                    onPressed:(){
                      print('you click me');
                    } ,
                    child: Text('START',
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
                          color: Colors.purpleAccent[400],
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
