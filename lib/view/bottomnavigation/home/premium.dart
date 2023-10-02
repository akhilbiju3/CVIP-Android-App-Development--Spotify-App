import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .3,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pre.webp",
                    ),
                    fit: BoxFit.cover)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .08,
                    width: MediaQuery.of(context).size.width * .09,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/Spotiy Logo.png",
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 10),
                  child: Text("Premium",
                      style: TextStyle(
                          color: backgroundcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("FREE TRIAL",
                style: TextStyle(
                    color: textcolor,
                    fontSize: 10,
                    fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Try Premium for 1 month",
                style: TextStyle(
                    color: textcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .06,
              width: MediaQuery.of(context).size.width * .9,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "GET PREMIUM",
                  style: TextStyle(
                      color: backgroundcolor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: textcolor),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
                text: TextSpan(style: TextStyle(color: Colors.grey), 
                children: [
              TextSpan(
                  text:
                      "Only ₹119/month after.Offer only for users who are new to premimum."),
              TextSpan(
                  text: "Terms and Conditions apply.",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: textcolor))
            ])),
          )
        ],
      ),
    );
  }
}
