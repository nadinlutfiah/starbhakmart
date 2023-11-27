import 'dart:math';
import 'package:flutter/material.dart';
import 'package:starbhackmart/homepage_assets/item_list.dart';

class Home extends StatefulWidget{
  const Home ({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),
      body: Column(
        children: [
          Column(
      children: [
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildIconButton(Icons.menu),
              buildIconButton(Icons.person_2_outlined),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildCategory("All", "asset/burger.png"),
            buildCategory("Foods", "asset/burger.png"),
            buildCategory("Drinks", "asset/soda.png"),
          ],
        ),
      ],
    ),

          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 5, right: 250),
            child: Text(
              "All Menu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: MyItem(),
                )
              ]
            ),
          )

        ],
      ),
    );
  }

  Widget buildIconButton(IconData icon){
    return Material(
      borderRadius: BorderRadius.circular(30),
      elevation: 15,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            onPressed: () {
              log(10);
              if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeDrawer();
                  //close drawer, if drawer is open
                } else {
                  scaffoldKey.currentState!.openDrawer();
                  //open drawer, if drawer is closed
                }
            },
            icon: Icon(icon),
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String label, String imagePath) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePath),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}