import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;

  const BookRating({
    Key key,
    this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            //green colour here
            color: Color.fromRGBO(150, 157, 235, 80),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.star,
            color: Colors.red,
            size: 15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$score",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
