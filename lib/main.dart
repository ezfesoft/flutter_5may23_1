// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BGT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int sayi = 0;
int sayi2 = 10;
int sayi3 = 100;
int sayi4 = 1000;
String yazi = "";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("5Mayıs2023"),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/duvarkagidi.jpg'),
                fit: BoxFit.cover)),
        child: Container(
            color: Colors.white.withOpacity(0.4),
            alignment: Alignment.center,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
//Button 1 Ekleme-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  Text("ElevatedButton: " + sayi.toString()),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sayi++;
                        });
                        print(sayi);
                      },
                      child: Text("ElevatedButton")),
//-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  SizedBox(
                    height: 30,
                  ),
//Button 2 Ekleme-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  Text("IconButton:" + sayi2.toString()),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          sayi2 += 10;
                        });
                        print(sayi2);
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 30,
                      )),
//-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  SizedBox(
                    height: 30,
                  ),
//Button 3 Ekleme-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  Text("TextButton: " + sayi3.toString()),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          sayi3 += 100;
                        });
                        print(sayi3);
                      },
                      child: Text("TextButton")),
//-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  SizedBox(
                    height: 30,
                  ),
//Button 4 Ekleme-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  Text("OutlineButton: " + sayi4.toString()),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          sayi4 += 1000;
                        });
                        print(sayi4);
                      },
                      child: Text("OutlineButton")),
//-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  SizedBox(
                    height: 30,
                  ),
//Herhangi bir widget'ı tıklanabilir hale getirme-*-*-*-*-*-*-*-*-
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 200,
                      color: Colors.green,
                    ),
                    onTap: () {
                      print("OnTap Çalişti");
                    },
                    onDoubleTap: () {
                      print("OnDoubleTap Çalişti");
                    },
                    onLongPress: () {
                      print("OnLongPress Çalişti");
                    },
                  ),
//-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  SizedBox(
                    height: 30,
                  ),
//TEXTFIELD EKLEME-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                  Container(
                      child:
                          //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                          TextField(
                        onChanged: (deger) {
                          setState(() {
                            yazi = deger;
                          });
                          print(yazi);
                        },
                        cursorColor: Colors.black,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Adinizi giriniz",
                            hintStyle: TextStyle(fontStyle: FontStyle.italic)),
                      ),
                      //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                      alignment: Alignment.center,
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/duvarkagidi.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 3,
                                offset: Offset(0, 3))
                          ])),
                  Text(
                    yazi,
                    style: TextStyle(fontSize: 30),
                  )
//-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
                ],
              ),
            )),
      ),
    );
  }
}
