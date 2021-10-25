import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/pages/home/home_page.dart';
import 'package:book_app/pages/login/widgets/login_form.dart';
import 'package:book_app/pages/login/widgets/login_option.dart';
import 'package:book_app/pages/login/widgets/primary_button.dart';
import 'package:book_app/pages/register/singup_page.dart';
import 'package:book_app/pages/reset_password/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:book_app/constants/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingConstant.instance.kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Hoşgeldiniz',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Burada yeni misin?",
                    style: queryTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Text(
                      "Kayıt Ol",
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordPage()));
                },
                child: Text(
                  "Şifrenizi mi unuttunuz?",
                  style: TextStyle(
                      color: kZambeziColor,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1),
                ),
              ),
              SizedBox(height: 20,),
              PrimaryButton(buttonText: 'Giriş Yap', onTapp: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }),
              SizedBox(height: 20,),
              Text('Ya da bir hesapla giriş yapın: ', style: queryTitle.copyWith(color: kBlackColor),),
              SizedBox(height: 20,),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
