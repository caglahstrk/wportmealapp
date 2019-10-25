import 'package:flutter/material.dart';

class VerticalCard extends StatefulWidget {
  @override
  _VerticalCardState createState() => _VerticalCardState();
}

class _VerticalCardState extends State<VerticalCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: height / 2,
      width: width / 1.05,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(bottom: 30),
              height: height / 2,
              width: width / 1.05,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: height / 2,
                            width: width / 1.05,
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFcBFV27yjW2YDo7wYZIJ84tXLR09R8XVMGDZ87N3KROqolpIG&s",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: height / 2,
                          width: width,
                          decoration: new BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 0.2),
                                  Colors.transparent
                                ]),
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ), // resim için
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 10, left: 10),
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Strawberry Smoothie",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "This simple Strawberry Smoothie is a refreshing reminder that basic can be beautiful.",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 7, left: 10),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.favorite_border, color: Colors.grey),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 3, right: 11),
                                child: Text("325"),
                              ),
                              Icon(Icons.access_alarm, color: Colors.grey),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 3, right: 11),
                                child: Text("10'"),
                              ),
                              Text("2 Portion"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ), //yazı için
                ],
              ),
            );
          }),
    );
  }
}
