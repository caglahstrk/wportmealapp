import 'package:flutter/material.dart';

class SinglePage extends StatefulWidget {
  @override
  _SinglePageState createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: height / 1.55,
                width: width,
                child: Image.network(
                  "https://s1.1zoom.me/big3/685/Smoothie_Blueberries_Stemware_Two_Branches_568158_1577x2362.jpg",
                  fit: BoxFit.fill,
                ),
              ), //resim gelecek
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: height / 20,
                          width: width /11,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius:
                                new BorderRadius.all(Radius.circular(200.0)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3,top: 3),
                          child: Icon(Icons.arrow_back, size: 28, color: Colors.white,),
                        )
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: height / 20,
                          width: width / 11,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius:
                                new BorderRadius.all(Radius.circular(200.0)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 4),
                          child: Icon(Icons.favorite_border, size: 27, color: Colors.white,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.only(top: 75),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "Strawberry Smoothie",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text("2 Portion",
                            style: TextStyle(fontSize: 20, letterSpacing: 2)),
                      ),
                    ],
                  ),
                  height: height / 5,
                  width: width,
                  decoration: new BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0, 1],
                          begin: FractionalOffset.bottomCenter,
                          end: FractionalOffset.topCenter,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Colors.transparent
                          ]),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                ),
              ), //kesili opak beyaz kısım
              //buton ve yazıların geleceği kısım
            ],
          ), // resmin olduğu kısım
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 15, left: 20, right: 20),
            child: DefaultTabController(
              length: 3,
              child: TabBar(
                labelPadding: EdgeInsets.only(bottom: 15),
                unselectedLabelStyle: TextStyle(
                  color: Colors.grey,
                ),
                indicatorColor: Color.fromRGBO(200, 53, 63, 12),
                tabs: <Widget>[
                  Text(
                    "About",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text("Ingrıdıents",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  Text("Reviews",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ],
              ),
            ),
          ),
          Container(
            height: height / 1.45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
                  width: width,
                  child: Text(
                    "In a blender combine strawberries, milk, yogurt, sugar and vanilla. Toss in the ice. Blend until smooth and creamy. Pour into glasses and serve.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Text("Milk", style: TextStyle(fontSize: 18)),
                      Text("Frozen strawberries",
                          style: TextStyle(fontSize: 18)),
                      Text("Strawberry jam", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
                  width: width,
                  child: Text("data", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
          //yazıların olacağı kısım
        ],
      ),
    );
  }
}
