import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_bottomnavigationbar/screens/home_screen.dart';
import 'package:practice_bottomnavigationbar/screens/notification.dart';
import 'package:practice_bottomnavigationbar/screens/order.dart';
import 'package:practice_bottomnavigationbar/screens/profile.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Homescreen(),
          MyNotification(),
          Orders(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/home2.svg',
              fit: BoxFit.contain,
              width: 28,
              height: 28,
              colorFilter: _currentIndex == 0
                  ? ColorFilter.mode(
                      Colors.deepPurple[300]!,
                      BlendMode.srcIn,
                    )
                  : ColorFilter.mode(
                      Colors.grey[500]!,
                      BlendMode.srcIn,
                    ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/notificationbing.svg',
              fit: BoxFit.contain,
              width: 28,
              height: 28,
              colorFilter: _currentIndex == 1
                  ? ColorFilter.mode(
                      Colors.deepPurple[900]!,
                      BlendMode.srcIn,
                    )
                  : ColorFilter.mode(
                      Colors.grey[800]!,
                      BlendMode.srcIn,
                    ),
            ),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/receipt1.svg',
              fit: BoxFit.contain,
              width: 28,
              height: 28,
              colorFilter: _currentIndex == 2
                  ? ColorFilter.mode(
                      Colors.deepPurple[900]!,
                      BlendMode.srcIn,
                    )
                  : ColorFilter.mode(
                      Colors.grey[800]!,
                      BlendMode.srcIn,
                    ),
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/profile.svg',
              fit: BoxFit.contain,
              width: 28,
              height: 28,
              colorFilter: _currentIndex == 3
                  ? ColorFilter.mode(
                      Colors.deepPurple[900]!,
                      BlendMode.srcIn,
                    )
                  : ColorFilter.mode(
                      Colors.grey[800]!,
                      BlendMode.srcIn,
                    ),
            ),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
