import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashtagable/hashtagable.dart';
import 'package:hexcolor/hexcolor.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Odyssey Omefe Jean',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                            'Web developer & UI designer with over 5 years e...',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                            )),
                        SizedBox(
                          height: 3,
                        ),
                        Text('2h',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(14.0, 10.0, 14.0, 10.0),
                    child: SvgPicture.asset(
                      'images/more.svg',
                      height: 24,
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: HashTagText(
                text:
                    "I had the privilege of celebrating a new birth year on Saturday the 15th. It's Monday today and I still feel the excitement from the weekend #takemeback 😊 .\nMy inbox is overflowing with good wishes and I am exceedingly grateful to everyone. Thank you indeed!\n#newweeknewgoals #msftadvocate #grateful",
                basicStyle: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    height: 2),
                decoratedStyle: GoogleFonts.roboto(
                    color: HexColor('#0F26F1'),
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    height: 2)),
          ),
          Container(
            child: Image.asset('images/1621245470448.jpg'),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('images/likes.svg', width: 18),
                      SizedBox(width: 6),
                      Text('You and 85K',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey))
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('images/chat.svg', width: 18),
                      SizedBox(width: 6),
                      Text('200 Comments',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey))
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('images/share.svg', width: 18),
                      SizedBox(width: 6),
                      Text('Share',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
