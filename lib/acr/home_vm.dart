// ignore_for_file: avoid_print, prefer_is_empty

import 'dart:async';

import 'package:acr_cloud_sdk/acr_cloud_sdk.dart';
import 'package:shazam_clone/acr/song_detail.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shazam_clone/acr/song.dart';

class HomeViewModel extends ChangeNotifier {
  late AnimationController controller;
  final AcrCloudSdk arc = AcrCloudSdk();
  final SongAPI api = SongAPI();

  BuildContext? _context;

  SongModel? _songModel;
  SongModel? get songModel => _songModel;
  set songModel(SongModel? val) {
    _songModel = val;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool val) {
    _loading = val;
    notifyListeners();
  }

  Future<void> init(BuildContext context) async {
    try {
      _context = context;

      arc
        ..init(
          host:
              'identify-eu-west-1.acrcloud.com', // obtain from https://www.acrcloud.com/
          accessKey:
              '92e5456a723332fd090e3ab70ece161e', // obtain from https://www.acrcloud.com/
          accessSecret:
              'orZqaXs6DkJglYXeypJC0YCh0a4LEjOoMdl8gNTJ', // obtain from https://www.acrcloud.com/
          setLog: false,
        )
        ..songModelStream.listen(searchSong);
    } catch (e) {
      print(e.toString());
    }
  }

  void start() async {
    try {
      controller.repeat();
      loading = true;
      await arc.start();
    } catch (e) {
      print(e.toString());
    }
  }

  void stop() async {
    try {
      controller.stop();
      loading = false;
      await arc.stop();
    } catch (e) {
      print(e.toString());
    }
  }

  void searchSong(SongModel song) async {
    var data = song.metadata;

    if (data != null && data.music!.length > 0) {
      var req = await api
          .dataFromDeezer(data.music?[0].externalMetadata?.deezer?.track?.id);
      req.fold(
        (l) => print(l.toString()),
        (songModel) {
          showCupertinoModalBottomSheet(
              context: _context!,
              builder: (_) {
                return SongDetailPage(songModel);
              });
        },
      );
    }
    controller.stop();
    loading = false;
  }
}
