
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  goNextFromSplash() async {

    Future.delayed(const Duration(milliseconds: 2500), () async {
      Navigator.pushNamed(context, '/BioData');
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goNextFromSplash();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.androidfreeware.net/img2/com-cvmaker-resumemaker-cvbuilder-resumebuilder-createcv-createresume-cvtemplate.jpg"),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "BioData Maker",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Welcome To My App",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
