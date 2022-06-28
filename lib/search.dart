// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, unused_local_variable, sized_box_for_whitespace, avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 13, 21, 2),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 13, 21, 2),
        // The search area here
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: TextField(
              autofocus: true,
              controller: _controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                //focusColor: Color(),
                filled: true,
                fillColor: Color.fromRGBO(0, 13, 21, 2),
                suffixIcon: InkWell(
                  onTap: () {
                    _controller.clear();
                  },
                  child: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                ),
                hintText: "Şarkılar, sanatçılar ve şarkı sözleri ara",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Container(
                width: double.infinity,
                height: 100,
                child: Image.asset(
                  "assets/images/shazam-logo.png",
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "İlgilendiğin şarkıları, sanatçıları ya da şarkı\nsözlerini ara.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
