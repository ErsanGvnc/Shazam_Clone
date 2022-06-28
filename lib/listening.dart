// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, unused_local_variable, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_import, duplicate_import, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shazam_clone/acr/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shazam_clone/acr/home_page.dart';
import 'package:shazam_clone/acr/log.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shazam_clone/acr/providers.dart';
import 'package:shazam_clone/acr/theme.dart';
import 'package:shazam_clone/all.dart';
import 'package:shazam_clone/artists.dart';
import 'package:shazam_clone/internet.dart';
import 'package:shazam_clone/listening.dart';
import 'package:shazam_clone/lyrics.dart';
import 'package:shazam_clone/playlists.dart';
import 'package:shazam_clone/playlistsforyou.dart';
import 'package:shazam_clone/search.dart';
import 'package:shazam_clone/settings.dart';
import 'package:share/share.dart';
import 'package:shazam_clone/songinfo.dart';

class Listening extends StatefulHookWidget {
  @override
  _ListeningState createState() => _ListeningState();
}

class _ListeningState extends State<Listening> {
  @override
  Widget build(BuildContext context) {
    final loading = useProvider(homeVM.select((v) => v.loading));
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
            );
          },
          child: Icon(
            Icons.close,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: InkWell(
        onTap: () {
          // print("sayfa değisio");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => Listening(),
          //   ),
          // );
          if (!loading) {
            print("basladı");
            context.read(homeVM).start();
          } else {
            print("bitti");
            context.read(homeVM).stop();
          }
        },
        child: Ripples(
          color: Colors.blueGrey,
          size: loading ? 180 : 100,
          child: Container(
            color: Colors.transparent,
            width: 160,
            height: 160,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/shazam-logo.png",
                color: Colors.white,
                //height: 40,
              ),
            ),
          ),
        ),
      ),
      // body: Container(
      //   child: Column(
      //     children: [
      //       SizedBox(height: 150),
      //       Container(
      //         color: Colors.transparent,
      //         width: double.infinity,
      //         height: screenheight / 1.75,
      //         child: Padding(
      //           padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      //           child: Column(
      //             children: [
      //               InkWell(
      //                 onTap: () {
      //                   // print("sayfa değisio");
      //                   // Navigator.push(
      //                   //   context,
      //                   //   MaterialPageRoute(
      //                   //     builder: (context) => Listening(),
      //                   //   ),
      //                   // );
      //                   if (!loading) {
      //                     print("basladı");
      //                     context.read(homeVM).start();
      //                   } else {
      //                     print("bitti");
      //                     context.read(homeVM).stop();
      //                   }
      //                 },
      //                 child: Ripples(
      //                   color: Colors.blueGrey,
      //                   size: loading ? 180 : 100,
      //                   child: Container(
      //                     color: Colors.transparent,
      //                     width: 160,
      //                     height: 160,
      //                     margin: const EdgeInsets.all(20),
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Image.asset(
      //                         "assets/images/shazam-logo.png",
      //                         color: Colors.white,
      //                         //height: 40,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               // Container(
      //               //   decoration: BoxDecoration(
      //               //     color: Colors.grey[800],
      //               //     shape: BoxShape.circle,
      //               //   ),
      //               //   width: 200,
      //               //   height: 200,
      //               //   child: Padding(
      //               //     padding: EdgeInsets.all(30),
      //               //     child: Image.asset(
      //               //       "assets/images/shazam-logo.png",
      //               //       fit: BoxFit.contain,
      //               //       color: Colors.white,
      //               //     ),
      //               //   ),
      //               // ),
      //               Spacer(),
      //               Text(
      //                 "Müzik dinliyor.",
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 22,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //               SizedBox(height: 10),
      //               Text(
      //                 "Cihazının şarkıyı net bir şekilde duyduğundan emin ol.",
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                   color: Colors.white70,
      //                   fontSize: 14,
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
