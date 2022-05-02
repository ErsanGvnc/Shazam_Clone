// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:share/share.dart';

class ModalInsideModal extends StatelessWidget {
  final bool reverse;

  const ModalInsideModal({Key? key, this.reverse = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Material(
      child: CupertinoPageScaffold(
        //backgroundColor: Colors.red,
        //backgroundColor: Color.fromRGBO(0, 40, 83, 1),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Color.fromRGBO(0, 40, 83, 1),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ÇALAN",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          middle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.6,
                0.99,
              ],
              colors: [
                Color.fromRGBO(0, 40, 83, 1),
                Color.fromRGBO(0, 40, 83, 0.8),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Don't Surrender",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
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
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Afterlife",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Besomorph & EMM",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Don't Surrender",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
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
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Afterlife",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Besomorph & EMM",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Don't Surrender",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
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
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Afterlife",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Besomorph & EMM",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Don't Surrender",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
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
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Afterlife",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Besomorph & EMM",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Don't Surrender",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
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
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Afterlife",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Besomorph & EMM",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showmodal();
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
                ),
              ],
            ),
          ),
        ),
        // SafeArea(
        //   bottom: false,
        //   child: ListView(
        //     reverse: reverse,
        //     shrinkWrap: true,
        //     controller: ModalScrollController.of(context),
        //     physics: ClampingScrollPhysics(),
        //     children: ListTile.divideTiles(
        //       context: context,
        //       tiles: List.generate(
        //         10,
        //         (index) => ListTile(
        //           title: Container(
        //             color: Colors.red,
        //             width: double.infinity,
        //             height: 50,
        //           ),
        //           // onTap: () => showCupertinoModalBottomSheet(
        //           //   expand: true,
        //           //   isDismissible: false,
        //           //   context: context,
        //           //   backgroundColor: Colors.transparent,
        //           //   builder: (context) => ModalInsideModal(reverse: reverse),
        //           // ),
        //         ),
        //       ),
        //     ).toList(),
        //   ),
        // ),
      ),
    );
  }
}
