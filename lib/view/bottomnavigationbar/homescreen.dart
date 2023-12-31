import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';
import 'package:spotify_clone/view/bottom_navigation_bar_items/home/home.dart';
import 'package:spotify_clone/view/bottom_navigation_bar_items/premium/premium.dart';
import 'package:spotify_clone/view/bottom_navigation_bar_items/library/library.dart';
import 'package:spotify_clone/view/bottom_navigation_bar_items/search/search.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selection = 0;

  void tap(index) {
    setState(() {
      selection = index;
    });
  }

  final screens = [Home(), Search(), Library(), Premium()];

  Widget miniPlayer() {
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.grey.withOpacity(0.1),
      width: deviceSize.width,
      height: deviceSize.height * .07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset("assets/images/grid1.png"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  "Bad Guy",
                  style: TextStyle(color: textcolor),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: textcolor,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: textcolor,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: backgroundcolor,
      body: screens[selection],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(),
          BottomNavigationBar(
            currentIndex: selection,
            fixedColor: textcolor,
            selectedLabelStyle: TextStyle(color: textcolor),
            backgroundColor: backgroundcolor,
            unselectedItemColor: textcolor,
            type: BottomNavigationBarType.fixed,
            onTap: (value) => tap(value),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: textcolor,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/icons/Search.png",
                  ),
                  color: textcolor,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      "assets/icons/Library.png",
                    ),
                    color: textcolor,
                  ),
                  label: "Library"),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/icons/SpotifyLogo1.png",
                  ),
                  color: textcolor,
                ),
                label: "Premium",
              )
            ],
          ),
        ],
      ),
    );
  }
}
