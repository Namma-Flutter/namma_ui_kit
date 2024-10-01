import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<String> titles = [
    'Delivery to your home',
    'Prepared by experts',
    'Enjoy with everyone',
  ];

  List<String> descriptions = [
    'Get your favorite food delivered right to your doorstep',
    'Our chefs prepare your meals with care and expertise',
    'Share delicious moments with friends and family',
  ];

  List<String> lottieUrls = [
    'https://lottie.host/d7cee9ec-18f6-4cdd-98f8-43f4e1885190/uET6Fau9Vt.json', // Food delivery animation
    'https://lottie.host/e4c73b5b-ed87-40d7-8fa3-d95ff3669254/in4auIbPw6.json', // Chef cooking animation
    'https://lottie.host/8f3cdcab-37d8-4de9-8d93-df6798b15e2e/VBNvAhlZOK.json', // People eating together animation
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 239, 225),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 120.0),
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Lottie.network(
                          lottieUrls[index],
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 30),
                        Text(
                          titles[index],
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            descriptions[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
             const Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child:const Text(
                    'App Name',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ),
                Align(
                  alignment: Alignment.center,
                  child:const Text(
                    'This is an example app',
                    style: TextStyle(
                      color: Colors.black
        ,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ),
              ],
            ),
          ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        width: _currentPage == index ? 20.0 : 10.0, // Wider rectangle for current page
height: 10.0,
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
  shape: _currentPage == index ? BoxShape.rectangle : BoxShape.circle,
  color: _currentPage == index 
      ? Color.fromARGB(255, 255, 102, 31) 
      : Color.fromARGB(255, 255, 206, 165),
  borderRadius: _currentPage == index 
      ? BorderRadius.circular(12.0) 
      : null, 
  
),

                      );
                    }),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Next page', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      if (_currentPage < 2) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        
                        print("Splash screen completed");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15), 
    ),
                      elevation: 0,
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}