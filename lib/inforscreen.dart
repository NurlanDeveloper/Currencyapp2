import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //
    return Scaffold(
      appBar: AppBar(
        title: Text("See Official Rates"),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.lightGreenAccent,
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
            ),
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
                    "The Current Rates",
                    style: Theme.of(context)
                        .textTheme
                        .display3
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(29.5)),
                    //child: TextField(),
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
                            color: Colors.brown[100],
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
                                        "Halyk Bank",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .title
                                            .copyWith(fontSize: 22),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.brown[50],
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Kazkom Bank",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 22),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => InfoScreen()
                                        //SecondPage(data: 'Hello'),
                                        ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "China Bank",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 22),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => InfoScreen()
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
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Kaspi Bank",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 22),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => InfoScreen()
                                        //SecondPage(data: 'Hello'),
                                        ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
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
