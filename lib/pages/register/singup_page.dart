import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/pages/login/signin_page.dart';
import 'package:book_app/pages/login/widgets/login_option.dart';
import 'package:book_app/pages/login/widgets/primary_button.dart';
import 'package:book_app/pages/register/widgets/checkbox.dart';
import 'package:book_app/pages/register/widgets/singup_form.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PaddingConstant.instance.kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70,),
              Text("Hesap Oluştur", style: titleText,),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("Zaten üye misin?",style: queryTitle,),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                    },
                      child: Text("Giriş Yap", style: textButton.copyWith(decoration: TextDecoration.underline,decorationThickness: 1),)),
                ],
              ),
              SizedBox(height: 10,),
              SignUpForm(),
              SizedBox(height: 10,),
              CheckBox(text: 'Şartları ve koşulları kabul ediyorum.',),
              SizedBox(height: 20,),
              CheckBox(text: 'Bilgilendirme e-postalarını gönderebilirsiniz.',),
              SizedBox(height: 20,),
              PrimaryButton(buttonText: "Kayıt Ol", onTapp: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
              },),
              SizedBox(height: 20,),
              Text("Ya da bir hesap ile giriş yapın:", style: queryTitle.copyWith(color: kBlackColor),
              ),
              SizedBox(height: 20,),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
