import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:socialmedia/components/posts.dart';
import 'package:socialmedia/components/profile.dart';
import 'package:socialmedia/components/programmes.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          elevation: 1,
          actions: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 14.0, 10.0),
                      child: Expanded(
                        child: CircleAvatar(
                          radius: (20),
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              'images/index.jpg',
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 270,
                      height: 47,
                      child: Expanded(
                        child: TextFormField(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          decoration: InputDecoration(
                            labelText: "Search anything here...",
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly
                            labelStyle: TextStyle(color: Colors.grey),
                            focusColor: Color(0xFF0695DE),
                            filled: true,
                            fillColor: Color(0xFFEEEEEE),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xFF0695DE)),
                            ),
                            prefixIcon: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.search,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.qr_code,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(14.0, 10.0, 14.0, 10.0),
                      child: SvgPicture.asset(
                        'images/notification.svg',
                        height: 24,
                      ))
                ])
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: HexColor('#F6F6F6'),
            child: Column(
              children: [
                Posts(),
                SizedBox(
                  height: 10,
                ),
                FeaturedProfile(),
                SizedBox(
                  height: 10,
                ),
                Posts(),
                SizedBox(
                  height: 10,
                ),
                FeaturedProgramme(),
                SizedBox(
                  height: 10,
                ),
                Posts(),
              ],
            ),
          ),
        ));
  }
}
