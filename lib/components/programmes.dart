import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedProgramme extends StatefulWidget {
  @override
  _FeaturedProgrammeState createState() => _FeaturedProgrammeState();
}

class _FeaturedProgrammeState extends State<FeaturedProgramme> {
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
                child: Text('Featured Programmes',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ))),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 317.0,
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
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'images/0ee985686192148d0d3ad7270dab0ce9.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Get Rich Quick',
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      )),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Web developer & UI designer with',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 8,
                                      )),
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {},
                                textColor: Colors.white,
                                color: Color(0xFF6486FF),
                                child: Text('Interested',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                    )),
                              ),
                            ],
                          ),
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
