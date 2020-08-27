import 'package:fgit/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'widgets/rounded_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //class MYApp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Book Appli',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, // i found uselese
          textTheme: Theme.of(context)
              .textTheme
              .apply(displayColor: Color.fromRGBO(255, 255, 255, 1))),
      home: WelcomeScreen(), //calling next class
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  //class WelcomeScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          //shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline3,
                children: [
                  TextSpan(text: "मेरो"),
                  TextSpan(
                      text: " पुस्तक.",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: "पढ्न सुरु गर्नुहोस्",
                fontSize: 20,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
