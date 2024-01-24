import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const FinalApp());
}

class FinalApp extends StatelessWidget {
  const FinalApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Akhir UAS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tugas AKhir UAS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" "),
              ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => uassegi());
                  Navigator.push(context, route);  // Add your button 1 action here
                },
                child: const SizedBox(
                  width: 250, // Set a fixed width for the button
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Hitung Luas Persegi', textScaleFactor: 1.5),
                          Text('Klik Untuk menghitung Luas Persegi'),
                        ],
                    ),
                  ),
                ),
              Text(" ", textScaleFactor: 0.8,),
              ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => UasLing());
                  Navigator.push(context, route);
                     // Add your button 2 action here
                },
                child: const SizedBox(
                  width: 250, // Set a fixed width for the button
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Hitung Luas Lingkaran', textScaleFactor: 1.5),
                          Text('Klik Untuk menghitung Luas Lingkaran'),
                        ],
                    ),
                  ),
              ),
              Text(' ', textScaleFactor: 0.8),
              ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => tentang());
                  Navigator.push(context, route);                     // Add your button 3 action here
                },
                child: const SizedBox(
                  width: 250, // Set a fixed width for the button
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Profile Developer', textScaleFactor: 1.5),
                          Text('Klik Untuk Melihat Profile Saya'),
                        ],
                    ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class uassegi extends StatefulWidget{
  const uassegi({super.key});

  @override
  State<uassegi> createState() => _UasegiState();
}

class _UasegiState extends State<uassegi>{
  TextEditingController pjg = TextEditingController();
  TextEditingController wdt = TextEditingController();
  String rst = '';

  void hitugluas() {
    double paj = double.tryParse(pjg.text) ?? 0.0;
    double lbr = double.tryParse(wdt.text) ?? 0.0;

    double rea = paj * lbr;

    setState(() {
      rst = 'Hasil Perhitungan Diatas Adalah $rea';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perhitungan Luas Persegi'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(' ', textScaleFactor: 1.2,),
            SizedBox(
              width: 360,
              child: TextField(
                controller: pjg,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan Panjang',
                ), 
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                controller: wdt,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Masukkan Lebar'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitugluas,
              child: Text('Hitung Luas'),
            ),
            Text(
              rst,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class UasLing extends StatefulWidget{
  const UasLing({super.key});

  @override
  State<UasLing> createState() => UasLingstate();
}

class UasLingstate extends State<UasLing>{
  TextEditingController controlluas = TextEditingController();
  String ling = '';

  void hitunglin() {
    double jari2 = double.tryParse(controlluas.text) ?? 0.0;
    double luas = 3.14 * (jari2*jari2);
    String lingling = luas.toStringAsFixed(3);

    setState(() {
      ling = 'Luas Lingkaran Dengan Jari-Jari $jari2 adalah: $lingling';
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perhitungan Luas Lingkaran'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(' ', textScaleFactor: 1.2,),
            SizedBox(
              width: 360,
              child:TextField(
                controller: controlluas,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Masukkan Jari-Jari Lingkaran', contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitunglin,
              child: Text('Hitung Luas'),
            ),
            Text(
              ling,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class tentang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(' ', textScaleFactor: 10.3),
            Text('Tentang Saya', textAlign: TextAlign.center, textScaleFactor: 1.3,),
            Text(' ', textScaleFactor: 0.8),
            Text('Nama : Sahran'),
            Text(' ', textScaleFactor: 0.3),
            Text('NPM : 2310020149'),
            Text(' ', textScaleFactor: 0.3),
            Text('Kelas : 5A Nonreg BJM'),
            Text(' ', textScaleFactor: 0.3),
            Text(
                'e-Mail : sahranran085@gmail.com', style: TextStyle(
                  color: Colors.blue
                ),
              ),
            Text(' ', textScaleFactor: 0.2),
            Text(
                'Alamat : Jl. A.Yani KM.21, Landasan Ulin, Gg. Kenanga IV, No.52', style: TextStyle(
                  color: Colors.blue
                ),
            ),
            Text(' ', textScaleFactor: 0.2),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}