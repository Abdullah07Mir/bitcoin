import 'package:bitcoin_flutter/Screens/Account.dart';
import 'package:bitcoin_flutter/Screens/Market.dart';
import 'package:bitcoin_flutter/Screens/Newspaper.dart';
import 'package:bitcoin_flutter/Screens/Trade.dart';
import 'package:bitcoin_flutter/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNavigationBar extends StatefulWidget {  

  
  @override  
  _MyNavigationBarState createState() => _MyNavigationBarState();  
}  
  
class _MyNavigationBarState extends State<MyNavigationBar > {  
  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    Account(),
    Trade(),  
    NewsPaper(),  
    Market(),
    Profile(),
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(   
      body: Center(  
        child: _widgetOptions.elementAt(_selectedIndex),  
      ),  
      bottomNavigationBar: BottomNavigationBar(  
        
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.contact_mail),  
            label: 'Account',  
            backgroundColor: Color(0xff265955) 
            
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.auto_graph_outlined),  
            label: 'Trade',  
            backgroundColor: Color(0xff265955) 
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.integration_instructions),  
            label: 'NewsPaper',  
            backgroundColor: Color(0xff265955)  
          ), 
          BottomNavigationBarItem(  
            icon: Icon(Icons.stacked_bar_chart_rounded),  
            label: 'Market',  
            backgroundColor: Color(0xff265955)  
            
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            label: 'Profile',  
            backgroundColor: Color(0xff265955) 
            
          ),  
        ],  
        type: BottomNavigationBarType.shifting,  
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.black,  
        iconSize: 30.sp,  
        
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    );  
  }  
}  