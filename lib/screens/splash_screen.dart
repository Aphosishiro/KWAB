import 'package:flutter/material.dart';
import 'package:kwab/screens/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/splash.png',
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            Container(
                height: size.height * 0.3,
                width: size.width * 0.3,
                margin: const EdgeInsets.only(top: 100),
                child: Image.asset('assets/logos.png')),
            const Spacer(),
            const Text(
              "MOVE WITH EASE",
              style: TextStyle(
                fontFamily: "Lexend",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              width: size.width * 0.7,
              height: size.height * 0.07,
              margin: const EdgeInsets.only(bottom: 80),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Onboarding()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEDB230),
                  ),
                  child: Row(
                    children: const [
                      Text("GET STARTED"),
                      Spacer(),
                      Icon(Icons.navigate_next),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
