// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, prefer_final_fields, avoid_print, unused_local_variable, unused_label, library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoYoutube extends StatefulWidget {
  @override
  _VideoYoutubeState createState() => _VideoYoutubeState();
}

class _VideoYoutubeState extends State<VideoYoutube> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 13, 21, 2),
        title: Text("Egzod & EMM - Game Over [Official Lyric Video]"),
        actions: [
          InkWell(
            onTap: () {
              onTap:
              () {
                Share.share("null");
              };
            },
            child: Icon(
              Icons.share,
              size: 27,
            ),
          ),
          SizedBox(width: 15),
          InkWell(
            onTap: () async {
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
        ],
      ),
      body: Container(
        child: WebView(
          //initialUrl: 'https://devssociety.com/#/',
          initialUrl: 'https://www.youtube.com/watch?v=JUBpDcjhF7M',
          javascriptMode: JavascriptMode.unrestricted,
          allowsInlineMediaPlayback: true,
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
