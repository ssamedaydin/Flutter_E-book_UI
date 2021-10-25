import 'package:book_app/constants/padding_constant.dart';
import 'package:book_app/pages/login/signin_page.dart';
import 'package:book_app/pages/login/widgets/primary_button.dart';
import 'package:book_app/pages/reset_password/widgets/reset_form.dart';
import 'package:book_app/constants/theme.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingConstant.instance.kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "Şifreni Yenile",
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lütfen e-posta adresinizi girin",
              style: queryTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10,),
            ResetForm(),
            SizedBox(height: 40,),
            PrimaryButton(buttonText: "Şifreni Yenile", onTapp: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
            },),
          ],
        ),
      ),
    );
  }
}
