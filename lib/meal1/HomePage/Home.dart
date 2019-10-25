import 'dart:math';
import 'package:wportmeals/meal1/HomePage/components/VerticalCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:wportmeals/meal1/HomePage/components/HorizontalCard.dart';

class HomePage extends StatelessWidget {
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
                height: height / 1.5,
                width: width,
                color: Color.fromRGBO(200, 53, 63, 12),
              ), //kırmızı kısım
              Positioned(
                bottom: 0,
                child: Container(
                  height: height / 4,
                  width: width,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                ),
              ), //beyaz oval yer
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 30,top: 40),
                            child: Text("Detox", style: TextStyle(color: Colors.white70 ,fontSize: 50, letterSpacing: 10, fontWeight: FontWeight.w900)),
                          ), // yazı
                          Container(
                            padding: EdgeInsets.only(top: 40,right: 30),
                            child: Icon(Icons.apps, size: 35, color: Colors.white54),
                          ), //drawer
                        ],
                      ),
                    ), // buton ve drawer
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: HorizontalCard(),
                    ), //cardlar
                  ],
                ),
              ), //buton ve cardın geldiği yer
            ],
          ), //home kırmızı kısım
         Container(
           color: Colors.white,
           width: width,
           child: Column(
             children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 130 ,top: 10,bottom: 5),
                  child: Text("Welness", style: TextStyle(color: Colors.black12, fontSize: 40,fontWeight: FontWeight.w900, letterSpacing: 10),),
                ),
                VerticalCard(),
             ],
           ),
         ),
          //home beyaz kısmı
        ],
      ),
    );
  }
}
