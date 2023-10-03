import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';
import 'package:spotify_clone/model/list/list.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: spotifyGreen,
                          child: Text(
                            "A",
                            style: TextStyle(color: backgroundcolor),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Text(
                          "Your Library",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textcolor),
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
                            Icons.search,
                            color: textcolor,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: textcolor,
                              size: 25,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: libraryContainer.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: gridcolor,
                              ),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  libraryContainer[index],
                                  style: TextStyle(color: textcolor),
                                ),
                              )),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            )
                          ],
                        ),
                      )),
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.swap_vert,
                              color: textcolor,
                            )),
                        Text(
                          "Recents",
                          style: TextStyle(color: textcolor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/icons/Component 17.png"))),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: libraryImage.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(libraryImage[index]))),
                      ),
                      title: Text(
                        libraryTitle[index],
                        style: TextStyle(
                            color: textcolor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        librarySubtitle[index],
                        style: TextStyle(color: textcolor),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
