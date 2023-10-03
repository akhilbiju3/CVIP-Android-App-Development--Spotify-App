import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';
import 'package:spotify_clone/view/homescreen/homescreen.dart';

class Firstrow extends StatefulWidget {
  final BuildContext scaffoldContext;
  const Firstrow({super.key, required this.scaffoldContext});

  @override
  State<Firstrow> createState() => _FirstrowState();
}

class _FirstrowState extends State<Firstrow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Builder(builder: (context) {
            return InkWell(
              onTap: () => Scaffold.of(widget.scaffoldContext).openDrawer(),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: spotifyGreen,
                child: Text(
                  "A",
                  style: TextStyle(color: backgroundcolor),
                ),
              ),
            );
          }),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Bottomnavigation(),
                ));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .055,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: gridcolor,
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("All",
                      style: TextStyle(
                          color: textcolor, fontWeight: FontWeight.bold)),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .055,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: gridcolor,
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Music",
                    style: TextStyle(
                        color: textcolor, fontWeight: FontWeight.bold)),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .055,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: gridcolor,
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Podcast",
                    style: TextStyle(
                        color: textcolor, fontWeight: FontWeight.bold)),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
