// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_import, unused_element, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:shazam_clone/artists.dart';
import 'package:shazam_clone/playsong.dart';

class PlaylistsForYou extends StatefulWidget {
  @override
  _PlaylistsForYouState createState() => _PlaylistsForYouState();
}

class _PlaylistsForYouState extends State<PlaylistsForYou> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

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
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 13, 21, 2),
        title: Text("Senin için Çalma Listeleri"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
                indent: 150,
                endIndent: 20,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
                indent: 150,
                endIndent: 20,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
                indent: 150,
                endIndent: 20,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
                indent: 150,
                endIndent: 20,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
                indent: 150,
                endIndent: 20,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
                indent: 150,
                endIndent: 20,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
                indent: 150,
                endIndent: 20,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playsong(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 120,
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.blue,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.orange,
                                          width: 60,
                                          height: 60,
                                        ),
                                        Container(
                                          color: Colors.purple,
                                          width: 60,
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 35,
                                left: 35,
                                child: Icon(
                                  Icons.play_circle,
                                  color: Colors.black.withOpacity(0.7),
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 231,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Into Your Arms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Ve Benzer Şarkılar",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 14,
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
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
