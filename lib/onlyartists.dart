// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sized_box_for_whitespace

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:share/share.dart';
import 'package:shazam_clone/artistvideoyoutube.dart';
import 'package:shazam_clone/lyrics.dart';
import 'package:shazam_clone/playsong.dart';

class Onlyartists extends StatefulWidget {
  @override
  _OnlyartistsState createState() => _OnlyartistsState();
}

class _OnlyartistsState extends State<Onlyartists>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    late final _tabcontroller = TabController(length: 1, vsync: this);

    showmodal() {
      showModalBottomSheet<void>(
        // isScrollControlled: true,
        // enableDrag: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 400,
            color: Color.fromRGBO(30, 44, 47, 1),
            child: Column(
              children: [
                // Container(
                //   color: Colors.red,
                //   width: double.infinity,
                //   height: 150,
                // ),
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
                          Icons.delete,
                          size: 30,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Kütüphanenden Kaldır",
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
                InkWell(
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        backgroundColor: Color.fromRGBO(30, 44, 47, 1),
                        title: Text(
                          "Yanlış şarkı mı?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        content: Text(
                          "Yanlış tanımlanan şarkıları Shazam'a bildirerek daha iyi sonuçlar elde etmemize yardımcı olabilirsin",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text(
                              "İPTAL",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: Text(
                              "BİLDİR",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
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
                            Icons.flag,
                            size: 30,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Yanlış şarkı mı? Shazam'a bildir",
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
                  height: 4,
                ),
              ],
            ),
          );
        },
      );
    }

//////////////////////////////////////////////////////////////////////////////////////////////////

    showmodalartist() {
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

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    return DefaultTabController(
      length: 1,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0.2,
        //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(20),
        //     child: Padding(
        //       padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
        //       child: TabBar(
        //         unselectedLabelColor: Colors.redAccent,
        //         indicatorSize: TabBarIndicatorSize.tab,
        //         indicator: BoxDecoration(
        //           borderRadius: BorderRadius.circular(30),
        //           color: Colors.amber,
        //         ),
        //         tabs: [
        //           Tab(
        //             text: "ASD",
        //           ),
        //           Tab(
        //             text: "ASD",
        //           ),
        //           Tab(
        //             text: "ASD",
        //           ),
        //           Tab(
        //             text: "ASD",
        //           ),
        //           Tab(
        //             text: "ASD",
        //           ),
        //           Tab(
        //             text: "ASD",
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        //   // flexibleSpace: TabBar(
        //   //   tabs: [
        //   //     Tab(
        //   //       child: Container(),
        //   //     ),
        //   //     Tab(
        //   //       icon: Icon(Icons.ac_unit),
        //   //       text: "asd",
        //   //     ),
        //   //     Tab(
        //   //       icon: Icon(Icons.ac_unit),
        //   //       text: "asd",
        //   //     ),
        //   //     Tab(
        //   //       icon: Icon(Icons.ac_unit),
        //   //       text: "asd",
        //   //     ),
        //   //     Tab(
        //   //       icon: Icon(Icons.ac_unit),
        //   //       text: "asd",
        //   //     ),
        //   //     Tab(
        //   //       icon: Icon(Icons.ac_unit),
        //   //       text: "asd",
        //   //     ),
        //   //     Tab(
        //   //       icon: Icon(Icons.ac_unit),
        //   //       text: "asd",
        //   //     ),
        //   //   ],
        //   // ),
        // ),
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
                          // decoration: BoxDecoration(
                          //   gradient: LinearGradient(
                          //     colors: [
                          //       Colors.black,
                          //       Colors.black26,
                          //     ],
                          //     begin: Alignment.bottomCenter,
                          //     end: Alignment.center,
                          //     stops: [
                          //       0.0,
                          //       1,
                          //     ],
                          //   ),
                          // ),
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
                        // Container(
                        //   decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //       image: ExactAssetImage(
                        //         "assets/images/todd.jpg",
                        //       ),
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        //   child: BackdropFilter(
                        //     filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        //     child: Container(
                        //       decoration: BoxDecoration(
                        //         color: Colors.white.withOpacity(0.0),
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        // child: Padding(
                        //   padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             "Into Your Arms",
                        //             style: TextStyle(
                        //               color: Colors.white,
                        //               fontSize: 30,
                        //               fontWeight: FontWeight.bold,
                        //             ),
                        //           ),
                        //           SizedBox(height: 5),
                        //           Text(
                        //             "Witt Lowry Feat. Ava Max",
                        //             style: TextStyle(
                        //               color: Colors.grey,
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.w400,
                        //             ),
                        //           ),
                        //           SizedBox(height: 15),
                        //           Row(
                        //             children: [
                        //               Container(
                        //                 width: 15,
                        //                 height: 15,
                        //                 decoration: BoxDecoration(
                        //                   color: Colors.grey,
                        //                   shape: BoxShape.circle,
                        //                 ),
                        //                 child: Padding(
                        //                   padding: EdgeInsets.all(2),
                        //                   child: Image.asset(
                        //                     "assets/images/shazam-logo.png",
                        //                     fit: BoxFit.cover,
                        //                   ),
                        //                 ),
                        //               ),
                        //               SizedBox(width: 5),
                        //               Text(
                        //                 "4.556.733 Shazam",
                        //                 style: TextStyle(
                        //                   color: Colors.grey,
                        //                   fontSize: 12,
                        //                   fontWeight: FontWeight.w400,
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ],
                        //       ),
                        //       Spacer(),
                        //       Container(
                        //         width: 65,
                        //         height: 65,
                        //         decoration: BoxDecoration(
                        //           color: Color.fromRGBO(255, 170, 1, 1),
                        //           shape: BoxShape.circle,
                        //         ),
                        //         child: Center(
                        //           child: Icon(
                        //             Icons.play_arrow,
                        //             color: Colors.white,
                        //             size: 45,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 0,
                      child: Container(
                        color: Colors.transparent,
                        width: screenwidth,
                        height: screenheight,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 8, 15, 0),
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Egzod",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  //height: 15,
                                  child: Text(
                                    "Kitaplığında",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2,
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't Surrender",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Egzod & EMM",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showmodalartist();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2,
                                  indent: 70,
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't Surrender",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Egzod & EMM",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showmodalartist();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  //height: 15,
                                  child: Text(
                                    "En Sevilen Şarkıları",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2,
                                ),
                                SizedBox(height: 25),
                                Container(
                                  width: 300,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    //color: Color.fromRGBO(25, 25, 25, 1),
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "HEPSİNİ ÇAL",
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't Surrender",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Egzod & EMM",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showmodalartist();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2,
                                  indent: 70,
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't Surrender",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Egzod & EMM",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showmodalartist();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2,
                                  indent: 70,
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't Surrender",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Egzod & EMM",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showmodalartist();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2,
                                  indent: 70,
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't Surrender",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Egzod & EMM",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showmodalartist();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2,
                                  indent: 70,
                                ),
                                SizedBox(height: 25),
                                Container(
                                  color: Colors.transparent,
                                  width: double.infinity,
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            width: 60,
                                            height: 60,
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              width: 30,
                                              height: 30,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Don't Surrender",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "Egzod & EMM",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          showmodalartist();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ///////////////////////////////////////////////////////////////////////////////////////
            // spot buraya

            // Positioned(
            //   bottom: 25,
            //   left: 100,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Color.fromRGBO(37, 37, 37, 1),
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //     width: 150,
            //     height: 50,
            //     child: Padding(
            //       padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
            //       child: Row(
            //         children: [
            //           Image.asset(
            //             "assets/images/spotify.png",
            //             fit: BoxFit.cover,
            //             color: Colors.white,
            //           ),
            //           SizedBox(width: 3),
            //           Text(
            //             "Spotify",
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 16,
            //             ),
            //           ),
            //           Container(
            //             color: Colors.grey,
            //             width: 0.5,
            //             height: 15,
            //             margin: EdgeInsets.all(7),
            //           ),
            //           Text(
            //             "Aç",
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 16,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   bottom: 25,
            //   left: 220,
            //   child: InkWell(
            //     onTap: () {
            //       showmodal();
            //     },
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
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: 292,
                    height: 35,
                    child: TabBar(
                      controller: _tabcontroller,
                      isScrollable: true,
                      unselectedLabelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                      ),
                      tabs: [
                        Tab(
                          text: "",
                        ),
                        // Tab(
                        //   text: "ŞARKI SÖZLERİ",
                        // ),
                        // Tab(
                        //   text: "VİDEO",
                        // ),
                        // Tab(
                        //   text: "SANATÇI",
                        // ),
                        // Tab(
                        //   text: "İLGİLİ",
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: 50,
                    height: 50,
                    child: InkWell(
                      onTap: () {
                        Share.share("null");
                      },
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   color: Colors.amber,
            //   width: 405,
            //   child: Row(
            //     children: [
            //       Container(
            //         color: Colors.red,
            //         width: 25,
            //         height: 75,
            //       ),
            //       Container(
            //         color: Colors.brown,
            //         height: 75,
            //         child: Padding(
            //           padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            //           child: TabBar(
            //             isScrollable: true,
            //             unselectedLabelColor: Colors.redAccent,
            //             indicatorSize: TabBarIndicatorSize.tab,
            //             indicator: BoxDecoration(
            //               borderRadius: BorderRadius.circular(30),
            //               color: Colors.amber,
            //             ),
            //             tabs: [
            //               Tab(
            //                 text: "ŞARKI",
            //               ),
            //               Tab(
            //                 text: "ŞARKI SÖZLERİ",
            //               ),
            //               Tab(
            //                 text: "VİDEO",
            //               ),
            //               Tab(
            //                 text: "SANATÇI",
            //               ),
            //               Tab(
            //                 text: "İLGİLİ",
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   color: Colors.brown,
            //   width: double.infinity,
            //   // height: 75,
            //   child: Padding(
            //     padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            //     child: TabBar(
            //       isScrollable: true,
            //       unselectedLabelColor: Colors.redAccent,
            //       indicatorSize: TabBarIndicatorSize.tab,
            //       indicator: BoxDecoration(
            //         borderRadius: BorderRadius.circular(30),
            //         color: Colors.amber,
            //       ),
            //       tabs: [
            //         Tab(
            //           text: "ŞARKI",
            //         ),
            //         Tab(
            //           text: "ŞARKI SÖZLERİ",
            //         ),
            //         Tab(
            //           text: "VİDEO",
            //         ),
            //         Tab(
            //           text: "SANATÇI",
            //         ),
            //         Tab(
            //           text: "İLGİLİ",
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
