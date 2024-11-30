import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_bottomnavigationbar/components/card_product.dart';
import 'package:practice_bottomnavigationbar/components/my_textfield.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var controllerTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/png/profile.png"),
                      radius: 25,
                    ),
                    const Spacer(),
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        minimumSize: const Size(50, 50),
                        backgroundColor: Colors.deepPurple[400],
                      ),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/svg/bag2.svg",
                        width: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const MyTextfield(),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      "Top Selling",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardProduct(
                      image: "assets/png/jacket.png",
                      title: "Men's Harrington Jacket",
                      price: "\$148.00",
                      fullPrice: "",
                    ),
                    SizedBox(width: 15),
                    CardProduct(
                      image: "assets/png/shoes.png",
                      title: "Max Cirro Men's Slides",
                      price: "\$55.00",
                      fullPrice: "\$100.97",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardProduct(
                      image: "assets/png/jacket.png",
                      title: "Men's Harrington Jacket",
                      price: "\$148.00",
                      fullPrice: "",
                    ),
                    SizedBox(width: 15),
                    CardProduct(
                      image: "assets/png/shoes.png",
                      title: "Max Cirro Men's Slides",
                      price: "\$55.00",
                      fullPrice: "\$100.97",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardProduct(
                      image: "assets/png/jacket.png",
                      title: "Men's Harrington Jacket",
                      price: "\$148.00",
                      fullPrice: "",
                    ),
                    SizedBox(width: 15),
                    CardProduct(
                      image: "assets/png/shoes.png",
                      title: "Max Cirro Men's Slides",
                      price: "\$55.00",
                      fullPrice: "\$100.97",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardProduct(
                      image: "assets/png/jacket.png",
                      title: "Men's Harrington Jacket",
                      price: "\$148.00",
                      fullPrice: "",
                    ),
                    SizedBox(width: 15),
                    CardProduct(
                      image: "assets/png/shoes.png",
                      title: "Max Cirro Men's Slides",
                      price: "\$55.00",
                      fullPrice: "\$100.97",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
