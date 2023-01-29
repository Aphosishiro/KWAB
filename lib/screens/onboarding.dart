import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  bool islastpage = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 100),
          child: PageView(
            controller: controller,
            children: [
              Onboarding1(size: size),
              Onboarding2(size: size),
              Onboarding3(size: size),
            ],
          ),
        ),
        bottomSheet: Container(
          color: const Color(0xFF2A9135),
          padding: const EdgeInsets.all(20),
          height: size.height * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.05,
              ),
              SmoothPageIndicator(
                effect: const WormEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
                controller: controller,
                count: 3,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.decelerate);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEDB230),
                ),
                child: const Text("NEXT"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Onboarding1 extends StatelessWidget {
  const Onboarding1({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/1.png",
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Request a Ride",
              style: TextStyle(
                fontFamily: "Lexend",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "Request a ride get picked up by a \n nearby community driver",
              style: TextStyle(
                fontFamily: "Lexend",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Onboarding2 extends StatelessWidget {
  const Onboarding2({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/2.png",
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Vehice Selection",
              style: TextStyle(
                fontFamily: "Lexend",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "You have the liberty to choose the \n type of vehicle as per your need",
              style: TextStyle(
                fontFamily: "Lexend",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Onboarding3 extends StatelessWidget {
  const Onboarding3({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/3.png",
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Trip Sharing",
              style: TextStyle(
                fontFamily: "Lexend",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "Share your ride  details with family and \n friends for safety reasons.",
              style: TextStyle(
                fontFamily: "Lexend",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
