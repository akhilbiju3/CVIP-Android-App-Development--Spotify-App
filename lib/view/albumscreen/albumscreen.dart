import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';

class Albumscreen extends StatelessWidget {
  final String songName;
  final String artistName;
  final String imageLink;
  final List<dynamic> songNameList;
  final List<dynamic> artistNameList;
  const Albumscreen(
      {super.key,
      required this.songName,
      required this.artistName,
      required this.imageLink,
      required this.songNameList,
      required this.artistNameList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              const Color.fromARGB(255, 136, 132, 132),
              Colors.black
            ],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.chevron_left)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageLink), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          songName,
                          style: TextStyle(
                              fontSize: 20,
                              color: textcolor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            artistName,
                            style: TextStyle(color: textcolor),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Album.2000",
                                style: TextStyle(color: Colors.black)),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 20,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.play_arrow)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: textcolor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Icon(
                              Icons.arrow_downward,
                              size: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.more_horiz,
                            color: textcolor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 9),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: songNameList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          songNameList[index],
                          style: TextStyle(
                              fontSize: 20,
                              color: textcolor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 10,
                              child: Icon(
                                Icons.arrow_downward,
                                size: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(artistNameList[index],
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: textcolor,
                                  )),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: textcolor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
