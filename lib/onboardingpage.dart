import 'package:flutter/material.dart';
import 'package:examcoffeshop/homepage.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 1),
            image: DecorationImage(
              image: AssetImage('images/onboarding-img.png'),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Transform.translate(
                offset: const Offset(0.0, 250.0),
                child: const Text(
                'Coffee so good, your taste buds will love it.',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
              const SizedBox(height: 20,),
              Transform.translate(
                offset: const Offset(0.0, 240.0),
                child: const Text(
                'The best grain, the finest roast, the powerful flavor.',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(169, 169, 169, 1),
                ),
                textAlign: TextAlign.center,
              ),
              ),
              const SizedBox(height: 20,),
              Transform.translate(
                offset: const Offset(0.0, 240.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(109, 21, 109, 21),
                    backgroundColor: const Color.fromRGBO(198, 124, 78, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const FittedBox(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color.fromRGBO(250, 227, 146, 1),
                        fontFamily: 'Sora',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
              )
            ],
          ),
        ),
      ),
    );
  }
}