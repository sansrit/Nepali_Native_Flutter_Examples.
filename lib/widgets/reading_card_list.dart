import 'package:fgit/widgets/book_rating.dart';
import 'package:fgit/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function pressDetails;
  final Function pressRead;

  const ReadingListCard({
    Key key,
    this.image,
    this.title,
    this.auth,
    this.rating,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      //uncomment color from here
      //color: Colors.lightBlue,

      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: Color.fromRGBO(6, 127, 196, 80)),
                ],
              ),
            ),
          ),
          Positioned(
              //left: 7,
              right: 60,
              child: Column(
                children: [
                  Image.asset(
                    image,
                    width: 140,
                    height: 140,
                  ),
                ],
              )),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                BookRating(
                  score: rating,
                )
              ],
            ),
          ),
          Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "$title\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: auth,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: Text("Details"),
                          ),
                        ),
                        Expanded(
                            child: TwoSideRoundedButton(
                          text: "Read",
                          press: pressRead,
                        ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
