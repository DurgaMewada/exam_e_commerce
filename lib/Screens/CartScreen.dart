import 'package:exam_e_commerce/Components/list.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
    Expanded(child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
                 height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/image/img2.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ))
  ],
)

    );
  }
}
