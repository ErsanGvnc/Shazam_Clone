// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, prefer_final_fields, avoid_print, unused_local_variable

import 'dart:async';

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
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 13, 21, 2),
        title: Text("TOP 200 TÜRKİYE Popüler Listesi"),
        actions: [
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
          initialUrl: 'https://www.shazam.com/tr/charts/top-200/global',
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
