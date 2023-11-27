import 'package:flutter/material.dart';
import 'package:starbhackmart/cardpage.dart';
import 'package:starbhackmart/dataproduk.dart';
import 'package:starbhackmart/homePage.dart';
import 'package:starbhackmart/masterdatapage.dart';


class Nav extends StatefulWidget{
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav>{

  int _selectedIndex = 0;
  List <Widget> _widgetOptions = <Widget>[
    Home(),
    MyCartPage(),
    MyAddPage(),
    ProductForm    (),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ), 
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: ClipRRect(                                                            
          borderRadius: BorderRadius.only(                                           
          topLeft: Radius.circular(20.0),                                            
          topRight: Radius.circular(20.0),                                           
          ),  
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          elevation: 30,
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.addchart_outlined),
            label: ""
          ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
        ),
      ),
    );
  }
}