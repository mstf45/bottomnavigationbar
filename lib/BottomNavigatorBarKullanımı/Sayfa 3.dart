import 'package:flutter/material.dart';

class Sayfa3 extends StatefulWidget {
  const Sayfa3({Key? key}) : super(key: key);

  @override
  State<Sayfa3> createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text('Profil Sayfası'),
            ),
          ],
        ),
      ),
    );
  }
}
