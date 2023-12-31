import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';
import 'package:spotify_clone/model/grid_constant/grid_constant.dart';
import 'package:spotify_clone/model/list/list.dart';
import 'package:spotify_clone/view/bottom_navigation_bar_items/home/firstrow.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Firstrow(
                scaffoldContext: context,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: gridScreen.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 70),
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: gridcolor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(gridScreen[index]),
                                    fit: BoxFit.fill)),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(gridName[index],
                                  style: TextStyle(
                                      color: textcolor,
                                      fontWeight: FontWeight.w500)),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Grid(
                heading: 'Jump To Back',
                gridImage: bigGrid,
                gridimageName: biggridName,
              ),
              Grid(
                heading: 'Recommended for Today',
                gridImage: recommendImage,
                gridimageName: recommendName,
              ),
              Grid(
                heading: 'Newly Loaded',
                gridImage: newlyLoadedimg,
                gridimageName: newlyLoadedNames,
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigationDrawer() {}
}
