// ignore_for_file: unused_local_variable, unnecessary_string_interpolations, use_key_in_widget_constructors, prefer_const_constructors, unused_import, sized_box_for_whitespace, avoid_print, avoid_unnecessary_containers, must_be_immutable, camel_case_types, prefer_final_fields, prefer_typing_uninitialized_variables, library_private_types_in_public_api

import 'dart:async';

import 'package:shazam_clone/acr/deezer_song_model.dart';
import 'package:shazam_clone/acr/internet.dart';
import 'package:shazam_clone/acr/margin.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SongDetailPage extends StatelessWidget {
  final DeezerSongModel? songModel;
  const SongDetailPage([this.songModel]);

  // _launchURLBrowser() async {
  //   const url = 'https://flutterdevs.com/';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // _launchURLApp() async {
  //   const url = 'https://flutterdevs.com/';
  //   if (await canLaunch(url)) {
  //     await launch(url, forceSafariVC: true, forceWebView: true);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    //var id = 351594981;
    var ol = songModel?.artist?.id;
    //return Songinfo();
    return Container(
      height: 150,
      child: Container(
        width: 50,
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Deneme(
                    gelen: songModel?.album?.link,
                    gelenbaslik: songModel?.title,
                  ),
                ),
              );
              print("link açıldı");
              print(songModel?.artist?.id);
              print("https://www.deezer.com/tr/artist/$ol");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          //color: Colors.red,
                          color: Color(0xffEDEDED),
                          borderRadius: BorderRadius.circular(10),
                          image: songModel != null
                              ? DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    songModel?.album?.coverMedium ?? '',
                                  ),
                                )
                              : null),
                    ),
                    const XMargin(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: context.screenWidth(0.42),
                          child: Text(
                            songModel?.title ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const YMargin(10),
                        Text(
                          songModel?.artist?.name ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                            color: Color(0xff727272),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const YMargin(5),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                '${songModel?.album?.title ?? ''}',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.montserrat(
                                  color: Color(0xffA3A3A3),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                ' • ${DateTime.parse(songModel?.releaseDate ?? DateTime.now().toIso8601String()).year}',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.montserrat(
                                  color: Color(0xffA3A3A3),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // InkWell(
                        //   onTap: () async {
                        //     //print('https://www.deezer.com/tr/track/$id');

                        //     // Navigator.push(
                        //     //   context,
                        //     //   MaterialPageRoute(
                        //     //     builder: (context) => Internet(),
                        //     //   ),
                        //     // );

                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => Deneme(
                        //           gelen: songModel?.link,
                        //           gelenbaslik: songModel?.title,
                        //         ),
                        //       ),
                        //     );
                        //     print("link açıldı");
                        //     print(songModel?.artist?.id);
                        //     print("https://www.deezer.com/tr/artist/$ol");
                        //   },
                        //   child: Container(
                        //     color: Colors.transparent,
                        //     width: screenwidth / 2,
                        //     child: Text(
                        //       //burası bottom card da gozuken yer.
                        //       '${songModel?.link ?? ''}',
                        //       overflow: TextOverflow.ellipsis,
                        //       style: GoogleFonts.montserrat(
                        //         color: Color(0xffA3A3A3),
                        //         fontSize: 11,
                        //         fontWeight: FontWeight.w300,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/more.png",
                      height: 20,
                    ),
                    const XMargin(30),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////// class lar veri taşıma kaldı onun dışında her şey dogru çalısıyor / classlar arası veri taşıma yapıldı

class Deneme extends StatefulWidget {
  var gelen;
  var gelenbaslik;
  Deneme({required this.gelen, this.gelenbaslik});

  @override
  _DenemeState createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    DeezerSongModel? songModel;
    var ol = songModel?.artist?.name;
    var oll = songModel?.artist?.id;
    //var id = songModel?.artist?.link;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 13, 21, 2),
        title: Text(
          widget.gelenbaslik,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          InkWell(
            onTap: () async {
              // print(oll);
              // print("object");
              // print(ol);
              // print("https://www.deezer.com/tr/artist/$oll");
              // print(songModel?.title);

              print(widget.gelen);
              print("acr/song_detail.dart");

              // FutureBuilder<WebViewController>(
              //   future: _controller.future,
              //   builder: (
              //     BuildContext context,
              //     AsyncSnapshot<WebViewController> controller,
              //   ) {
              //     if (controller.hasData) {
              //       return FloatingActionButton(
              //         onPressed: () async {
              //           controller.data!.reload();
              //         },
              //         child: Icon(Icons.refresh),
              //       );
              //     }
              //     return Container();
              //   },
              // );
            },
            child: Icon(
              Icons.refresh,
              size: 27,
            ),
          ),
          // IconButton(
          //   onPressed: () {
          //     print("object");
          //     FutureBuilder<WebViewController>(
          //       future: _controller.future,
          //       builder: (
          //         BuildContext context,
          //         AsyncSnapshot<WebViewController> controller,
          //       ) {
          //         if (controller.hasData) {
          //           return FloatingActionButton(
          //             onPressed: () async {
          //               controller.data!.reload();
          //             },
          //             child: Icon(Icons.refresh),
          //           );
          //         }
          //         return Container();
          //       },
          //     );
          //   },
          //   icon: Icon(
          //     Icons.refresh,
          //     size: 27,
          //   ),
          // ),
          SizedBox(width: 10),
          // IconButton(
          //   onPressed: () {
          //     // print("${songModel?.link}");
          //     // print("asdasdasdasd");
          //   },
          //   icon: Icon(Icons.arrow_back),
          // ),
        ],
      ),
      body: SafeArea(
        child: WebView(
          //linkteki "track" ifadesi sıkıntı çıkarıyor. bu yanlıs
          //sorun "useragent" daydı random olunca sorun çözülüyor.

          //initialUrl: 'https://www.shazam.com/tr/home',
          //initialUrl: "https://www.deezer.com/tr/artist/$id",

          //initialUrl: "https://www.deezer.com/tr/artist/$ol",
          initialUrl: widget.gelen,

          //initialUrl: ("https://www.deezer.com/tr/track/${songModel?.link}"),
          //initialUrl: 'https://www.deezer.com/tr/artist/5962948',
          //initialUrl: 'https://www.google.com/search?q=$asd',
          javascriptMode: JavascriptMode.unrestricted,
          allowsInlineMediaPlayback: true,
          userAgent: "random",
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),

      //////////////////////////////////////////////////////////////////////////////////////////

      // floatingActionButton: FutureBuilder<WebViewController>(
      //   future: _controller.future,
      //   builder: (
      //     BuildContext context,
      //     AsyncSnapshot<WebViewController> controller,
      //   ) {
      //     if (controller.hasData) {
      //       return FloatingActionButton(
      //         onPressed: () async {
      //           controller.data!.reload();
      //         },
      //         child: Icon(Icons.refresh),
      //       );
      //     }
      //     return Container();
      //   },
      // ),
    );
  }
}
