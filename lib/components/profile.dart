import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedProfile extends StatefulWidget {
  @override
  _FeaturedProfileState createState() => _FeaturedProfileState();
}

class _FeaturedProfileState extends State<FeaturedProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Featured Profile',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ))),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 305.0,
                aspectRatio: 4 / 3,
                viewportFraction: 0.65,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(5)),
                      width: 250,
                      margin: EdgeInsets.all(3),
                      padding: EdgeInsets.all(7),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      10.0, 10.0, 14.0, 10.0),
                                  child: Expanded(
                                    child: CircleAvatar(
                                      radius: (15),
                                      backgroundColor: Colors.white,
                                      child: ClipOval(
                                        child: Image.asset(
                                          'images/index.jpg',
                                          width: 30,
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
                                        fontSize: 9,
                                      )),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                      'Web developer & UI designer with over 5',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 7,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset('images/goodnight-eden.jpg',
                                    fit: BoxFit.fitWidth),
                              ),
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  'images/sport-home-social-media-posts-template_23-2148820098.jpg',
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                    'images/0ee985686192148d0d3ad7270dab0ce9.jpg',
                                    fit: BoxFit.fitWidth),
                              ),
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                    'images/267322-P57QSO-207.jpg',
                                    fit: BoxFit.fitWidth),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
