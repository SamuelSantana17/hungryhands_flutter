import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatefulWidget {

        @override
        _HomeScreenWidgetState createState() => _HomePageWidgetState();
        }
        
        class _HomePageWidgetState extends State<HomePageWidget> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator HomePageWidget - FRAME
        
        return Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: -152,
        left: -255,
        child: SvgPicture.asset(
        'assets/images/ellipse1.svg',
        semanticsLabel: 'ellipse1'
      );
      ),
        ]
      )
    );
        }
        }
        
        
