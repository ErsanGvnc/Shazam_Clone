// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_element, avoid_print, unnecessary_import, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:shazam_clone/playsongbottomsheet.dart';
import 'package:shazam_clone/playsongmodalinside.dart';

class Playsong extends StatefulWidget {
  @override
  _PlaysongState createState() => _PlaysongState();
}

class _PlaysongState extends State<Playsong> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    late final _tabcontroller = TabController(length: 1, vsync: this);

    showmodal() {
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 350,
            color: Color.fromRGBO(30, 44, 47, 1),
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Image.asset(
                              "assets/images/shazam-logo.png",
                              fit: BoxFit.contain,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Into Your Arms",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Witt Lowry Feat. Ava Max",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 5,
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.transparent,
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            "assets/images/spotify.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Spotify'da aç",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.transparent,
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            "assets/images/apple-music.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Apple Music'te aç",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.library_music,
                          size: 30,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Kitaplığına Ekle",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Share.share("null");
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share,
                            size: 30,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Paylaş",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info,
                          size: 30,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Sanatçıyı görüntüle",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     showDialog<String>(
                //       context: context,
                //       builder: (BuildContext context) => AlertDialog(
                //         backgroundColor: Color.fromRGBO(30, 44, 47, 1),
                //         title: Text(
                //           "Yanlış şarkı mı?",
                //           style: TextStyle(
                //             color: Colors.white,
                //           ),
                //         ),
                //         content: Text(
                //           "Yanlış tanımlanan şarkıları Shazam'a bildirerek daha iyi sonuçlar elde etmemize yardımcı olabilirsin",
                //           style: TextStyle(
                //             color: Colors.grey,
                //           ),
                //         ),
                //         actions: [
                //           TextButton(
                //             onPressed: () => Navigator.pop(context, 'Cancel'),
                //             child: Text(
                //               "İPTAL",
                //               style: TextStyle(
                //                 color: Colors.grey,
                //               ),
                //             ),
                //           ),
                //           TextButton(
                //             onPressed: () => Navigator.pop(context, 'OK'),
                //             child: Text(
                //               "BİLDİR",
                //               style: TextStyle(
                //                 color: Colors.blue,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     );
                //   },
                //   child: Container(
                //     color: Colors.transparent,
                //     width: double.infinity,
                //     height: 50,
                //     child: Padding(
                //       padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Icon(
                //             Icons.flag,
                //             size: 30,
                //             color: Colors.grey,
                //           ),
                //           SizedBox(width: 20),
                //           Text(
                //             "Yanlış şarkı mı? Shazam'a bildir",
                //             style: TextStyle(
                //               color: Colors.white,
                //               fontWeight: FontWeight.w500,
                //               fontSize: 16,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 4,
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          TabBarView(
            controller: _tabcontroller,
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        color: Colors.transparent,
                        height: screenheight / 1.39,
                        width: screenwidth,
                        child: Image.asset(
                          //'assets/images/google.png',
                          'assets/images/todd.jpg',
                          fit: BoxFit.cover,
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
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                              stops: [
                                0.0,
                                1,
                              ],
                            ),
                          ),
                          width: screenwidth,
                          height: 50,
                        ),
                      ),
                      Positioned(
                        left: 142,
                        top: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Don't Surrender",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Egzod & EMM",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
                ],
              ),
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////
          ///

          Positioned(
            bottom: 175,
            left: 88,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 170, 1, 0),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.skip_previous,
                      color: Colors.amber,
                      size: 45,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 170, 1, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 170, 1, 0),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.skip_next,
                      color: Colors.amber,
                      size: 45,
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///
          // spot buraya

          Positioned(
            bottom: 100,
            left: 130,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(37, 37, 37, 1),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 150,
              height: 50,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/spotify.png",
                      fit: BoxFit.cover,
                      color: Colors.white,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Spotify",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      width: 0.5,
                      height: 15,
                      margin: EdgeInsets.all(7),
                    ),
                    Text(
                      "Aç",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: 25,
          //   left: 220,
          //   child: InkWell(
          //     onTap: () {},
          //     child: Container(
          //       decoration: BoxDecoration(
          //         //color: Colors.red,
          //         color: Color.fromRGBO(37, 37, 37, 1),
          //         shape: BoxShape.circle,
          //       ),
          //       width: 150,
          //       height: 50,
          //       child: Icon(
          //         Icons.more_vert,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          ///
          Positioned(
            bottom: 65,
            left: 350,
            child: Text(
              "00:28",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                decoration: TextDecoration.none,
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                print("object");
                showAvatarModalBottomSheet(
                  expand: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => ModalInsideModal(),
                );
              },
              child: Column(
                children: [
                  Container(
                    color: Colors.amber.withOpacity(0.6),
                    width: screenwidth,
                    height: 15,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.amber,
                          width: screenwidth / 3,
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromRGBO(0, 40, 83, 1),
                    width: 413,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "ÇALAN",
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Şuna benzer: Don't Surrender",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///
          ///////////////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Row(
              children: [
                Container(
                  color: Colors.transparent,
                  width: 50,
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  width: 292,
                  height: 35,
                ),
                Container(
                  color: Colors.transparent,
                  width: 50,
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      showmodal();
                    },
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
