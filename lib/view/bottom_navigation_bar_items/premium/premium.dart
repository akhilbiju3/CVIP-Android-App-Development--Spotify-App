import 'package:flutter/material.dart';
import 'package:spotify_clone/model/color_constant/colors.dart';
import 'package:spotify_clone/view/bottom_navigation_bar_items/premium/premiumconstantcontainer.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
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
                    height: MediaQuery.of(context).size.height * .1,
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
              height: MediaQuery.of(context).size.height * .02,
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
              height: MediaQuery.of(context).size.height * .02,
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
              height: MediaQuery.of(context).size.height * .01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RichText(
                  text:
                      TextSpan(style: TextStyle(color: Colors.grey), children: [
                TextSpan(
                    text:
                        "Only ₹119/month after.Offer only for users who are new to premimum.",
                    style: TextStyle(fontSize: 11)),
                TextSpan(
                    text: "Terms and Conditions apply.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textcolor,
                        fontSize: 10))
              ])),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            joinPremiumContainer(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            spotifyFreeContainer(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text("Pick Your Premium",
                  style: TextStyle(
                      fontSize: 17,
                      color: textcolor,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Premiumcontainer(
                plan: 'Mini',
                description:
                    '1 day and 1 week plans • Ad-free music on mobile • Download 30 songs on 1 mobile device • Mobile only plan',
                color1: Colors.lightBlueAccent,
                color2: Colors.blueAccent,
                color3: Colors.blue,
                color4: const Color.fromARGB(255, 40, 81, 114)),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Premiumcontainer(
                plan: 'Premium Individual',
                description:
                    ' Ad-free music on mobile • Download to listen offline • Debit and credit cards accepted ',
                color1: const Color.fromARGB(255, 52, 133, 55),
                color2: Colors.lightGreen,
                color3: Colors.green,
                color4: Colors.greenAccent),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Premiumcontainer(
                plan: 'Premium Duo',
                description:
                    ' Ad-free music on mobile • Download to listen offline • Debit and credit cards accepted • Upto 5 devices • Download 10000 songs on 5 mobile devices  ',
                color1: Color.fromARGB(255, 126, 182, 208),
                color2: Color.fromARGB(255, 99, 133, 202),
                color3: Color.fromARGB(255, 58, 109, 145),
                color4: Color.fromARGB(255, 86, 107, 227)),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Premiumcontainer(
                plan: 'Premium Family',
                description:
                    ' Ad-free music on mobile • Download to listen offline • Debit and credit cards accepted • Upto 5 devices • Download 10000 songs on 5 mobile devices  ',
                color1: Color.fromARGB(255, 126, 182, 208),
                color2: Color.fromARGB(255, 163, 90, 190),
                color3: Color.fromARGB(255, 177, 42, 128),
                color4: Color.fromARGB(255, 211, 12, 145)),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Premiumcontainer(
                plan: 'Premium Student',
                description:
                    ' Ad-free music on mobile • Download to listen offline • Debit and credit cards accepted • Upto 5 devices • Download 10000 songs on 5 mobile devices  ',
                color1: Color.fromARGB(255, 232, 148, 13),
                color2: Color.fromARGB(255, 219, 111, 16),
                color3: Color.fromARGB(255, 190, 148, 31),
                color4: Color.fromARGB(255, 224, 150, 21))
          ],
        ),
      ),
    );
  }

  Center spotifyFreeContainer(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * .09,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: gridcolor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Spotify Free",
                style: TextStyle(
                    fontSize: 17,
                    color: textcolor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "CURRENT PLAN",
                style: TextStyle(
                    fontSize: 12,
                    color: textcolor,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }

  Center joinPremiumContainer(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * .26,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: gridcolor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Why join Premium?",
                  style: TextStyle(
                      color: textcolor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
              Divider(
                thickness: 0.1,
                color: textcolor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                children: [
                  Icon(
                    Icons.done,
                    color: spotifyGreen,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Download to listen offline without wifi",
                        style: TextStyle(
                            color: textcolor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                children: [
                  Icon(
                    Icons.done,
                    color: spotifyGreen,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Music without ad interruptions",
                        style: TextStyle(
                            color: textcolor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                children: [
                  Icon(
                    Icons.done,
                    color: spotifyGreen,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("2x higher sound quality than our free plan",
                        style: TextStyle(
                            color: textcolor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                children: [
                  Icon(
                    Icons.done,
                    color: spotifyGreen,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Cancel monthly plans online anytime",
                        style: TextStyle(
                            color: textcolor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
