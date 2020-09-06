import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/task.dart';

import 'main.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {

  var color1 = Color(0xF0F06FAE);
  var block = Color(0xFFF17DB7);
  var addTask = Color(0xFFCE5F95);

  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if(index == 1)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Task()),
      );
    else if(index == 0)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Counteur()),
      );
    else
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Report()),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        title: Text('Smart Focus'),
        actions: [
          Icon(Icons.more_vert),
        ],
        backgroundColor: color1,
        elevation: 0.0,
      ),
      body:
      Center(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: Colors.white60,
            ),
            title: Text('Pomodoro'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Colors.white60,
            ),
            title: Text('Tasks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.build,
              color: Colors.white60,
            ),
            title: Text('Report'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
