import 'package:challenge_four/screens/destails.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.txt,
    required this.img,
  }) : super(key: key);

  final String txt;

  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(
                  title: txt,
                ),
              ),
            );
          },
          child: Container(
            //margin: EdgeInsets.only(bottom: 20),
            height: 160,
            width: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
              color: Color(0xff070235),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          txt,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
