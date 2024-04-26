import 'package:exam_e_commerce/Components/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Components/Globals.dart';
import '../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                )
            ),
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
                      Icon(Icons.menu, size: 20, color: Colors.white,),
                      Text('Welcome',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 18),),
                      Icon(Icons.search, size: 20, color: Colors.white,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                    Text('World of Luxury', style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Find a Perfect Watch For Your Waist', style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Categories', style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('See All', style: TextStyle(
                        color: brown,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/Cat1.png'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            Text(
                              'Leather Strap', style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/Cat2.png'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            Text(
                              'Metallic Strap', style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/Cat3.png'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            Text(
                              'Smart Watch', style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Featured products', style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('See All', style: TextStyle(
                        color: brown,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      child: Wrap(
                        children: List.generate(
                          productslist.length,
                              (index) =>
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    selectIndex = index;
                                    Navigator.of(context).pushNamed(
                                        '/detail');
                                  },
                                  child: ProductCon(
                                      img: productslist[index]['img'],
                                      name: productslist[index]['name'],
                                      price: productslist[index]['price']),
                                ),
                              ),
                        ),
                      ),
                    ),
                    ),
                    ],
                  ),
                )
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home, size: 20, color: Colors.white,),
                      Icon(Icons.favorite, size: 20, color: Colors.white,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed('/cart');
                        },
                        child: Icon(Icons.shopping_cart_outlined, size: 20,
                          color: Colors.white,),
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

  Container ProductCon({required String img, required String name, required int price}) {
    return Container(
      height: 230,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0, 2),
            spreadRadius: 5,
            blurRadius: 5,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: 250,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                '${name}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '\$ ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
                TextSpan(
                    text: '${price}',
                    style: TextStyle(
                      //color: darkcolor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),

              ],),),
            ],
          )
        ],
      ),
    );
  }
}
