import 'package:flutter/material.dart';
import 'package:practice_bottomnavigationbar/components/card_order.dart';

import '../components/button_tabbar.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Orders',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    ButtonTabbar(
                      name: "Processing",
                      bcolor: Colors.deepPurple.shade400,
                      fcolor: Colors.white,
                    ),
                    const SizedBox(width: 15),
                    ButtonTabbar(
                      name: "Shipped",
                      bcolor: Colors.grey.withOpacity(0.3),
                      fcolor: Colors.black,
                    ),
                    const SizedBox(width: 15),
                    ButtonTabbar(
                      name: "Delivered",
                      bcolor: Colors.grey.withOpacity(0.3),
                      fcolor: Colors.black,
                    ),
                    const SizedBox(width: 15),
                    ButtonTabbar(
                      name: "Returned",
                      bcolor: Colors.grey.withOpacity(0.3),
                      fcolor: Colors.black,
                    ),
                    const SizedBox(width: 15),
                    ButtonTabbar(
                      name: "Canced",
                      bcolor: Colors.grey.withOpacity(0.3),
                      fcolor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: [
                  CardOrder(
                    title: "#456667",
                    item: "4 items",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CardOrder(
                    title: "#456667",
                    item: "2 items",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CardOrder(
                    title: "#456667",
                    item: "1 items",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
