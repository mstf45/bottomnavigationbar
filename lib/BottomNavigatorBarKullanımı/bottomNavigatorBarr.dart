import 'package:bottomnavigationbar/BottomNavigatorBarKullan%C4%B1m%C4%B1/Sayfa%201.dart';
import 'package:bottomnavigationbar/BottomNavigatorBarKullan%C4%B1m%C4%B1/Sayfa%202.dart';
import 'package:bottomnavigationbar/BottomNavigatorBarKullan%C4%B1m%C4%B1/Sayfa%203.dart';
import 'package:flutter/material.dart';

class BottomNavigatorKullanimi extends StatefulWidget {
  const BottomNavigatorKullanimi({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorKullanimi> createState() =>
      _BottomNavigatorKullanimiState();
}

class _BottomNavigatorKullanimiState extends State<BottomNavigatorKullanimi> {
  var sayfaListesi = [Sayfa1(), Sayfa2(), Sayfa3()];
  int secilenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black26,
        iconSize: 30,
        currentIndex: secilenIndex,
        onTap: (index) {
          setState(() {
            secilenIndex = index;
          });
        },
      ),
    );
  }
}
