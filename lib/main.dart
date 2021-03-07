import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayi_tahmin_etme_uygulamasi/TahminEkran%C4%B1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sayı Tahmini",
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ANASAYFA",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 12,
        centerTitle: true,
        backgroundColor: Colors.orange,
        shadowColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "TAHMİN OYUNU",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 45,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(
                    color: Colors.blueAccent,
                    blurRadius: 5,
                    offset: Offset(5, 3),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.auto_fix_high,
              color: Colors.black,
              size: 175,
            ),
            SizedBox(
              height: 60,
              width: 175,
              child: RaisedButton(
                color: Colors.orange,
                elevation: 8,
                child: Text(
                  "BAŞLA",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TahminEkrani()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
