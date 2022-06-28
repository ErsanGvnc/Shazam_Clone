// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, prefer_final_fields, avoid_print, unused_local_variable, unnecessary_string_interpolations, unused_import, library_private_types_in_public_api

import 'dart:async';

import 'package:shazam_clone/acr/deezer_song_model.dart';
import 'package:shazam_clone/acr/song_detail.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Internet extends StatefulWidget {
  @override
  _InternetState createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    DeezerSongModel? songModel;
    //const SongDetailPage([this.songModel]);
    var asd = songModel?.artist?.id;

    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 13, 21, 2),
        title: Text(
          songModel?.title ?? '',
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          InkWell(
            onTap: () async {
              print(songModel?.artist?.id);
            },
            child: Icon(
              Icons.refresh,
              size: 27,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: WebView(
        //linkteki "track" ifadesi sıkıntı çıkarıyor. (bu yanlıs)
        //sorun "useragent" daydı random olunca sorun çözülüyor.

        //initialUrl: 'https://www.shazam.com/tr/home',
        initialUrl: "https://www.deezer.com/artist/$asd",
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
