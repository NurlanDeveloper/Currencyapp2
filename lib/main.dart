//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttercurrencyapp2/inforscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Exchange App',
      theme: ThemeData(
        fontFamily: "Hello",
        scaffoldBackgroundColor: Colors.yellowAccent,
        textTheme: Theme.of(context).textTheme.apply(displayColor: Colors.red),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.lightBlueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Official Rates"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Rate History"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Today's Rate",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/Dollar.jpg"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    "Currency Exchange",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      //childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "U.S. Dollars",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .title
                                            .copyWith(fontSize: 22),
                                      ),
                                      Text("422.35", style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Choose the Bank ",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 22),
                              ),

                              RaisedButton(onPressed: (
                                  ) {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          InfoScreen()
                                          //SecondPage(data: 'Hello'),
                                    ),
                                );
                              },

                              )
                            ],
                          ),

                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "RUR",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 22),
                              ),
                              Text("5.6", style: TextStyle(fontSize: 15))


                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "CAD Dollar",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 22),
                              ),
                              Text("405.35")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

