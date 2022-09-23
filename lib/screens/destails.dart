import 'package:challenge_four/screens/card_details.dart';
import 'package:challenge_four/screens/segested.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List getLists = [
    ['Camera', 'images/camera.png', true],
    ['Battery', 'images/btr.png', false],
    ['Flash', 'images/fl.png', false],
  ];

  List getProdeucts = [
    ['Canon', 'images/c3.jpg'],
    ['Nikon', 'images/c1.jpg'],
    ['FujiFilm', 'images/c2.jpg'],
    ['Sony', 'images/c4.png'],
    ['Lumix', 'images/c5.jpg'],
    ['Pentax', 'images/c6.jpg'],
  ];

  void Tapted(int index) {
    setState(() {
      for (int i = 0; i < getLists.length; i++) {
        getLists[i][2] = false;
      }
      getLists[index][2] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 25, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              //color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              //color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                height: 36,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: getLists.length,
                    itemBuilder: (_, index) {
                      return SugestedLists(
                        onTap: () => Tapted(index),
                        name: getLists[index][0],
                        img: getLists[index][1],
                        isTapted: getLists[index][2],
                      );
                    }),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.93,
                    //crossAxisSpacing: 0.1,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: getProdeucts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardDetails(
                      txt: getProdeucts[index][0],
                      img: getProdeucts[index][1],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
