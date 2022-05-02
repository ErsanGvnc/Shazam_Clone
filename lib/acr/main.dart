// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:shazam_clone/acr/home_page.dart';
import 'package:shazam_clone/acr/log.dart';
import 'package:shazam_clone/acr/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  Log.init(kReleaseMode);
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: themeData(context),
      debugShowCheckedModeBanner: false,
    );
  }
}
