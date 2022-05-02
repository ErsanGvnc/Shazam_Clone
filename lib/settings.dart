// ignore_for_file: unused_local_variable, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    bool isSwitched1 = true;
    bool isSwitched2 = false;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 37, 43, 1),
        title: Text("Ayarlar"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      //height: 75,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          "DİĞER UYGULAMALARDA SHAZAM'LA",
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bildirim çubuğunda Shazam'la",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 303,
                            //height: 250,
                            child: Text(
                              "Diğer uygulamalarda müziği Shazam'lamak için kalıcı bir bildirim göster.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Switch(
                            value: isSwitched2,
                            onChanged: (value) {
                              setState(() {
                                isSwitched2 = value;
                                print(isSwitched2);
                              });
                            },
                            activeTrackColor: Colors.blue[900],
                            activeColor: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Açılır pencereden Shazam'la",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 303,
                            //height: 250,
                            child: Text(
                              "Şarkı sözlerini görmek ve müziği Shazam'lamak için kayan düğme göster.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Switch(
                            value: isSwitched1,
                            onChanged: (value) {
                              setState(() {
                                isSwitched1 = value;
                                print(isSwitched1);
                              });
                            },
                            activeTrackColor: Colors.blue[900],
                            activeColor: Colors.blue,
                            inactiveTrackColor: Colors.grey[600],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      //height: 75,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          "AKAN",
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 20,
                            height: 20,
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                "assets/images/shazam-logo.png",
                                fit: BoxFit.contain,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Apple Music",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 282,
                            //height: 250,
                            child: Text(
                              "Apple Music aboneliğiyle Shazam'da tam şarkılar çal.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 80,
                              height: 30,
                              child: Center(
                                child: Text(
                                  "BAĞLAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            width: 20,
                            height: 20,
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                "assets/images/spotify.png",
                                fit: BoxFit.contain,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Spotify",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 232,
                            //height: 250,
                            child: Text(
                              "Shazam'dan ayrılmadan şarkılarını çalma listelerine ekle.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.greenAccent[700],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 130,
                              height: 30,
                              child: Center(
                                child: Text(
                                  "BAĞLANTIYI KES",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      //height: 75,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          "GENEL AYARLAR",
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Temalar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 322,
                            //height: 250,
                            child: Text(
                              "Shazam'ın görünümünü değiştir.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          // Switch(
                          //   value: isSwitched2,
                          //   onChanged: (value) {
                          //     setState(() {
                          //       isSwitched2 = value;
                          //       print(isSwitched2);
                          //     });
                          //   },
                          //   activeTrackColor: Colors.blue[900],
                          //   activeColor: Colors.blue,
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Video Önizlemesi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 362,
                            //height: 250,
                            child: Text(
                              "Şarkı sayfasında video klibin önizlemesini kontrol et.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          // Switch(
                          //   value: isSwitched2,
                          //   onChanged: (value) {
                          //     setState(() {
                          //       isSwitched2 = value;
                          //       print(isSwitched2);
                          //     });
                          //   },
                          //   activeTrackColor: Colors.blue[900],
                          //   activeColor: Colors.blue,
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Otomatik Shazam",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 303,
                            //height: 250,
                            child: Text(
                              "İpucu: Oto Shazam'ı başlatmak için ana ekrandaki Shazam düğmesine basılı tut.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Switch(
                            value: isSwitched2,
                            onChanged: (value) {
                              setState(() {
                                isSwitched2 = value;
                                print(isSwitched2);
                              });
                            },
                            activeTrackColor: Colors.blue[900],
                            activeColor: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Başlangıçta Shazam",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 303,
                            //height: 250,
                            child: Text(
                              "Shazam'ı uygulama açılırken müziği tespit edecek şekilde ayarla.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Switch(
                            value: isSwitched1,
                            onChanged: (value) {
                              setState(() {
                                isSwitched1 = value;
                                print(isSwitched1);
                              });
                            },
                            activeTrackColor: Colors.blue[900],
                            activeColor: Colors.blue,
                            inactiveTrackColor: Colors.grey[600],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Titreştir",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 303,
                            //height: 250,
                            child: Text(
                              "Shazam'ı Shazamlama bitince titreşecek şekilde ayarla.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Switch(
                            value: isSwitched1,
                            onChanged: (value) {
                              setState(() {
                                isSwitched1 = value;
                                print(isSwitched1);
                              });
                            },
                            activeTrackColor: Colors.blue[900],
                            activeColor: Colors.blue,
                            inactiveTrackColor: Colors.grey[600],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      //height: 75,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          "DESTEK",
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hakkında",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 322,
                            //height: 250,
                            // child: Text(
                            //   "Shazam'ın görünümünü değiştir.",
                            //   style: TextStyle(
                            //     color: Colors.grey,
                            //     fontSize: 16,
                            //   ),
                            // ),
                          ),
                          // Switch(
                          //   value: isSwitched2,
                          //   onChanged: (value) {
                          //     setState(() {
                          //       isSwitched2 = value;
                          //       print(isSwitched2);
                          //     });
                          //   },
                          //   activeTrackColor: Colors.blue[900],
                          //   activeColor: Colors.blue,
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shazam ile ilgili yardım al",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 322,
                            //height: 250,
                            // child: Text(
                            //   "Shazam'ın görünümünü değiştir.",
                            //   style: TextStyle(
                            //     color: Colors.grey,
                            //     fontSize: 16,
                            //   ),
                            // ),
                          ),
                          // Switch(
                          //   value: isSwitched2,
                          //   onChanged: (value) {
                          //     setState(() {
                          //       isSwitched2 = value;
                          //       print(isSwitched2);
                          //     });
                          //   },
                          //   activeTrackColor: Colors.blue[900],
                          //   activeColor: Colors.blue,
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    //height: 75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "ÇIKIŞ YAP",
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              color: Colors.transparent,
                              width: 322,
                              //height: 250,
                              // child: Text(
                              //   "Shazam'ın görünümünü değiştir.",
                              //   style: TextStyle(
                              //     color: Colors.grey,
                              //     fontSize: 16,
                              //   ),
                              // ),
                            ),
                            // Switch(
                            //   value: isSwitched2,
                            //   onChanged: (value) {
                            //     setState(() {
                            //       isSwitched2 = value;
                            //       print(isSwitched2);
                            //     });
                            //   },
                            //   activeTrackColor: Colors.blue[900],
                            //   activeColor: Colors.blue,
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  //height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: 25,
                            height: 25,
                            child: Image.asset(
                              "assets/images/google.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "newsstechno@gmail.com",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
