import 'package:flutter/material.dart';
import 'package:travelingo_apps/home/home-page.dart';
import 'package:travelingo_apps/home/invest-page.dart';
import 'package:travelingo_apps/home/profile-page.dart';
import 'package:travelingo_apps/home/wishlist-page.dart';
import 'package:travelingo_apps/template.dart';

class MainPageHome extends StatefulWidget {

  @override
  State<MainPageHome> createState() => _MainPageHomeState();
}

class _MainPageHomeState extends State<MainPageHome> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNavbar() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 3),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          child: BottomNavigationBar(
            onTap: (value){
              setState(() {
                currentIndex = value;
                print(value);
              });
            },
              backgroundColor: BackgroundTextColor1,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: currentIndex == 0 ? Image.asset(
                        'assets/icons/icon-home-active.png',
                        width: 29,
                      ) : Image.asset(
                        'assets/icons/icon-home.png',
                        width: 29,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: currentIndex == 1 ? Image.asset(
                        'assets/icons/icon-wishlist-active.png',
                        width: 29,
                      ): Image.asset(
                        'assets/icons/icon-wishlist.png',
                        width: 29,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(
                        top: 12
                      ),
                      child: currentIndex == 2 ? Image.asset(
                        'assets/icons/icon-invest-active.png',
                        width: 29,
                      ) : Image.asset(
                        'assets/icons/icon-invest.png',
                        width: 29,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(
                        top: 12
                      ),
                      child: currentIndex == 3 ? Image.asset(
                        'assets/icons/icon-profile-active.png',
                        width: 29,
                      ) :  Image.asset(
                        'assets/icons/icon-profile01.png',
                        width: 29,
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    Widget mainBody(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return WishlistPage();
          break;
        case 2:
          return InvestPage();
          break;
        case 3:
          return ProfilePage();
          break;

        default:
        return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: bottomNavbar(),
      body: mainBody(),
    );
  }
}
