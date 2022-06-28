// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_local_variable, use_key_in_widget_constructors, unnecessary_null_comparison, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:share/share.dart';
import 'package:shazam_clone/playsongmodalinside.dart';

class Circular extends StatefulWidget {
  @override
  _CircularState createState() => _CircularState();
}

class _CircularState extends State<Circular> {
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
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 13),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "Don't Surrender",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Egzod && Emm",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      //fontSize: 14,
                    ),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  showmodal();
                },
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 13),
            ],
          ),
          SafeArea(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 170, 1, 0),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.skip_previous,
                      color: Colors.amber,
                      size: 45,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 170, 1, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 170, 1, 0),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.skip_next,
                      color: Colors.amber,
                      size: 45,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "00:28",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(width: 5),
            ],
          ),
          Container(
            color: Colors.amber.withOpacity(0.6),
            width: screenwidth,
            height: 15,
            child: Row(
              children: [
                Container(
                  color: Colors.amber,
                  width: screenwidth / 3,
                  height: 15,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: ClipRRect(
              child: Container(
                width: double.infinity,
                // decoration: BoxDecoration(
                //   color: Theme.of(context).scaffoldBackgroundColor,
                //   boxShadow: [
                //     BoxShadow(
                //       blurRadius: 10,
                //       color: Colors.black12,
                //       spreadRadius: 5,
                //     ),
                //   ],
                // ),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ModalInsideModal(),
                ),
                // child: Container(
                //   color: Colors.red,
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<T?> showAvatarModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color barrierColor = Colors.black87,
  bool bounce = true,
  bool expand = false,
  AnimationController? secondAnimation,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  Duration? duration,
}) async {
  assert(context != null);
  assert(builder != null);
  assert(expand != null);
  assert(useRootNavigator != null);
  assert(isDismissible != null);
  assert(enableDrag != null);
  assert(debugCheckHasMediaQuery(context));
  assert(debugCheckHasMaterialLocalizations(context));
  final result = await Navigator.of(context, rootNavigator: useRootNavigator)
      .push(ModalBottomSheetRoute<T>(
    builder: builder,
    containerBuilder: (_, animation, child) => Circular(),
    bounce: bounce,
    secondAnimationController: secondAnimation,
    expanded: expand,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    isDismissible: isDismissible,
    modalBarrierColor: barrierColor,
    enableDrag: enableDrag,
    duration: duration,
  ));
  return result;
}
