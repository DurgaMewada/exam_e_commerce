import 'package:exam_e_commerce/Components/Globals.dart';
import 'package:exam_e_commerce/Components/list.dart';
import 'package:exam_e_commerce/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 20,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(productslist[selectIndex]['img']),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${productslist[selectIndex]['name']}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '⭐⭐⭐⭐ 4.0 Rating',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Elevate your wrist experience with our watch app. '
                        'From fitness tracking to productivity tools, it puts essential functions at your fingertips.'
                        ' Stay connected, organized, and on top of your day with ease.',
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Text(
                      ' \$ ${productslist[selectIndex]['price']}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.brown,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed('/cart');

                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:Border.all(color: Colors.black,width: 1),
                              ),
                              alignment: Alignment.center,
                              child: Text('Add To Cart',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,

                              ),),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home,
                        size: 20,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.favorite,
                        size: 20,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
