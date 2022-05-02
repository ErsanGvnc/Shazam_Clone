// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Lyrics extends StatefulWidget {
  @override
  _LyricsState createState() => _LyricsState();
}

class _LyricsState extends State<Lyrics> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(04, 06, 05, 0.9),
        title: Text("Don't Surrender"),
        actions: [
          InkWell(
            onTap: () {
              Share.share("null");
            },
            child: Icon(
              Icons.share,
              size: 27,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.transparent,
              height: screenheight,
              width: screenwidth,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(
                      "assets/images/todd.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                    begin: Alignment.center,
                    end: Alignment.topCenter,
                    stops: [
                      0.0,
                      0.7,
                    ],
                  ),
                ),
                width: screenwidth,
                height: 300,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: screenwidth,
                height: screenheight / 3.50,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              width: screenwidth,
              height: screenheight,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                      Container(
                        color: Colors.transparent,
                        width: double.infinity,
                        //height: 500,
                        child: Column(
                          children: [
                            Text(
                              "Darling I've been tempted by the darkness",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Telling me that I should throw it, throw it all away",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Fight so hard my heart is hardly helpless",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Find myself so desperate on my on my knees to pray",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 60),
                            Text(
                              "And I hear the voice of an angel",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Telling me not to lay it down",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "And I feel the spirit guiding",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Telling me not to give up now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 60),
                            Text(
                              "I hold on to every promise",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "I've been praying for a light",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "I hold on to every comet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Won't surrender - not tonight",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 60),
                            Text(
                              "Surrender",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Shadows rise as I walk through the valley",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "But I won't let nothing",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Take my take my heart away",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "I recognize the powеrs as they rally",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Call their names- I brеak them one by one and face to face",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 60),
                            Text(
                              "And I hear the voice of an angel",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Telling me not to lay it down",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "And I feel the spirit guiding",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Telling me not to give up now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 60),
                            Text(
                              "I hold on to every promise",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "I've been prayingfor a light",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "I hold on to every comet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Won't surrender - not tonight",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 60),
                            Text(
                              "Won't surrender not tonight",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Surrender",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Won't surrender not tonight",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 485),
                            Text(
                              "Lyrics powered by www.musixmatch.com",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
