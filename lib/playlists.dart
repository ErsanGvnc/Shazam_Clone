// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:shazam_clone/all.dart';
import 'package:shazam_clone/artists.dart';
import 'package:shazam_clone/playsong.dart';
import 'package:shazam_clone/songinfo.dart';

class Playlists extends StatefulWidget {
  @override
  _PlaylistsState createState() => _PlaylistsState();
}

class _PlaylistsState extends State<Playlists> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 13, 21, 2),
        title: Text("Türkiye Listesi"),
        actions: [
          Icon(
            Icons.playlist_add_check,
            size: 27,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Playsong(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent[700],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              "HEPSİNİ ÇAL",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "3",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "4",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "5",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "6",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "7",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "8",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "9",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "10",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "11",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "12",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "13",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "14",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "15",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "16",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "17",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "18",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "19",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  indent: 150,
                  endIndent: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Songinfo(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 120,
                            height: 120,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/todd.jpg",
                                    fit: BoxFit.cover,
                                    height: 275,
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.black.withOpacity(0.7),
                                    size: 55,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text(
                                        "20",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.transparent,
                            width: 230,
                            height: 120,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(height: 3),
                                  Text(
                                    "Witt Lowry Feat. Avax",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(40, 49, 54, 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 65,
                                        height: 25,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/spotify.png",
                                                fit: BoxFit.contain,
                                                height: 175,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "Spotify",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showmodal();
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
        ),
      ),
    );
  }
}
