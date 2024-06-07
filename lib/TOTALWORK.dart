import 'package:flutter/material.dart';
import 'package:mywork/product%20discription.dart';
import 'package:mywork/spotpage.dart';

import 'Insta.dart';
import 'Navhome.dart';
import 'amazon product.dart';
import 'navprof.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {

  int _index = 0;

  final page =[
    nav(),
    prf(),
    product(),
    discription(),
    insta(),
    spotpage(),



  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: page[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "AMAZON"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "PRODUCT"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "INSTA"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "SPOTIFY"),

        ],
        currentIndex: _index,
        onTap: tap,
        //fixedColor: Colors.red,
        backgroundColor: Colors.cyan,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,

      ),
    );
  }
}
