import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const logoColor = Color(0xFF008F51);

    Widget buildSectionTitle(String text, double fontSize, FontWeight fontWeight) {
      return Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      );
    }

    Widget buildLogo() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.png",
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 10),
          const Text(
            "MASJID.LIFE",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: logoColor,
            ),
          ),
        ],
      );
    }

    Widget buildDescription() {
      return const Text(
        "We are Committed to\nProviding 100% interest Free\nLoans & Social Services",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: logoColor,
        ),
        textAlign: TextAlign.center,
      );
    }

    Widget buildImage() {
      return Image.asset(
        "assets/images/masjid.png",
        width: 340,
        height: 340,
      );
    }

    Widget buildTrustText() {
      return const Text(
        "Your trusted partner in building a \npoor free society",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.center,
      );
    }

    Widget buildGetStartedButton() {
      return ElevatedButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: logoColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
          child: Text(
            "Get Started",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  buildSectionTitle("Welcome to", 20, FontWeight.w600),
                  const SizedBox(height: 10),
                  buildLogo(),
                  const SizedBox(height: 20),
                  buildDescription(),
                  const SizedBox(height: 20),
                  buildImage(),
                  const SizedBox(height: 20),
                  buildTrustText(),
                  const SizedBox(height: 20),
                  buildGetStartedButton(),
                ],
              ),
            ),
            Positioned(
              bottom: 470,
              left: 280,
              child: Image.asset(
                "assets/images/Ellipse 1.png",
                width: 170,
                height: 150,
              ),
            ),
            Positioned(
              bottom: 590,
              right: 280,
              child: Image.asset(
                "assets/images/Ellipse 2.png",
                width: 170,
                height: 150,
              ),
            ),
            Positioned(
              top: 600,
              right: 280,
              child: Image.asset(
                "assets/images/Ellipse 3.png",
                width: 170,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
