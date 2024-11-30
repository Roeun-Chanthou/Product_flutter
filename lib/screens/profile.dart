import 'package:flutter/material.dart';
import 'package:practice_bottomnavigationbar/components/card_profile.dart';
import 'package:practice_bottomnavigationbar/components/detail_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "assets/png/profile.png",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const DetailProfile(),
              const SizedBox(
                height: 30,
              ),
              const CardProfile(
                title: "Address",
                image: "assets/svg/arrowright2.svg",
              ),
              const SizedBox(
                height: 10,
              ),
              const CardProfile(
                title: "Wishlist",
                image: "assets/svg/arrowright2.svg",
              ),
              const SizedBox(
                height: 10,
              ),
              const CardProfile(
                title: "Payment",
                image: "assets/svg/arrowright2.svg",
              ),
              const SizedBox(
                height: 10,
              ),
              const CardProfile(
                title: "Help",
                image: "assets/svg/arrowright2.svg",
              ),
              const SizedBox(
                height: 10,
              ),
              const CardProfile(
                title: "Support",
                image: "assets/svg/arrowright2.svg",
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
