import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';

class Premiumcontainer extends StatefulWidget {
  final String plan;
  final String description;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  const Premiumcontainer(
      {super.key,
      required this.plan,
      required this.description,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.color4});

  @override
  State<Premiumcontainer> createState() => _PremiumcontainerState();
}

class _PremiumcontainerState extends State<Premiumcontainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: gridcolor,
            gradient: LinearGradient(
              colors: [
                widget.color1,
                widget.color2,
                widget.color3,
                widget.color4,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.plan,
                    style: TextStyle(color: textcolor, fontSize: 16),
                  ),
                  Column(
                    children: [
                      Text("From ₹7",
                          style: TextStyle(
                              color: textcolor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("FOR 1 DAY",
                          style: TextStyle(
                            color: textcolor,
                            fontSize: 10,
                          ))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Text(
                widget.description,
                style: TextStyle(
                  color: textcolor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .3,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("VIEW PLANS",
                      style: TextStyle(
                          color: backgroundcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), backgroundColor: textcolor),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: gridcolor,
                      ),
                      children: [
                    TextSpan(
                        text: "Only for users who are new to Premium. ",
                        style: TextStyle(fontSize: 10, color: gridcolor)),
                    TextSpan(
                        text: "Terms and Conditions apply.",
                        style: TextStyle(
                            fontSize: 10,
                            color: textcolor,
                            fontWeight: FontWeight.bold))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}