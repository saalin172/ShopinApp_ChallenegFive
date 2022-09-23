import 'package:challenge_four/screens/products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List OF Images and names
  List getProdeucts = [
    ['Aniques', 'images/a2.jpg'],
    ['Art', 'images/ar.png'],
    ['Baby', 'images/by.jpg'],
    ['Books', 'images/b.jpg'],
    ['Cameras', 'images/c3.jpg'],
    ['Phones', 'images/iph.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Categories',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          leading: Image.asset("images/menu.png"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black87,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      //width: 150,
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            spreadRadius: 1,
                            blurRadius: 15,
                            offset: Offset(4, 4),
                          ),
                          BoxShadow(
                            color: Colors.white10,
                            spreadRadius: 1,
                            blurRadius: 15,
                            offset: Offset(-4, -4),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          hintText: "Search Products",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 45,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color(0xff070235),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset(
                      "images/edit.png",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                // height: h,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 0.93,
                    //crossAxisSpacing: 0.1,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: getProdeucts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Products(
                      txt: getProdeucts[index][0],
                      img: getProdeucts[index][1],
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
