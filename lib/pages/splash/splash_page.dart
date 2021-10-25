import 'package:book_app/pages/home/home_page.dart';
import 'package:book_app/pages/login/signin_page.dart';
import 'package:book_app/pages/register/singup_page.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSplashColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.asset("lib/assets/images/splash_log.png",width: 300,),
            SizedBox(height: 10,),
            Text("Dilediğince Kitap Seç",style: splashText1),
            SizedBox(height: 10,),
            Text("Özgürce Oku!",style: splashText2),
            SizedBox(height: 50,),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: const Text('Giriş Yap',),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: kBlack,
                    width: 2.0,
                  ),
                  primary: kBlack,
                ),
              ),
            ),
        SizedBox(
          width: 250,
          child: TextButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpPage()));
          },
            child: Text("Kayıt Ol"),
            style: TextButton.styleFrom(
              backgroundColor:  kBlack,
              primary: kWhiteColor,
            ),
          ),
        ),

        ],
        ),
    ),);
  }
}
