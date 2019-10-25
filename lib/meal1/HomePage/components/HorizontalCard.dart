import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width / 1.7,
                    padding: EdgeInsets.only(left: 20, right: 5),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: height / 2,
                                  child: Image.network(
                                    "https://c.pxhere.com/images/64/29/3f796043d958fc7b6bb3d39414c2-1457327.jpg!d",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              Container(
                                height: height / 2,
                                
                                decoration: new BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Color.fromRGBO(255, 255, 255, 0.1),
                                        Colors.transparent
                                      ]),
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ), //filtre
                            ],
                          ),
                        ), // resmin olduğu container
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Strawberry Smoothie",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 7, left: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.favorite_border,
                                          color: Colors.grey),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 3, right: 11),
                                        child: Text("325"),
                                      ),
                                      Icon(Icons.access_alarm,
                                          color: Colors.grey),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 3, right: 11),
                                        child: Text("10'"),
                                      ),
                                      Text("2 Portion"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ), // yazıların olduğu container
                      ],
                    ),
                  ), // butonun olmadığı katman temel şeylerin olduğu
                  Container(), //like butonunun olduğu katman
                ],
              ),
            );
          }),
    );
  }
}
