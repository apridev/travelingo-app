import 'package:flutter/material.dart';
import 'package:travelingo_apps/template.dart';

class LoginPage extends StatelessWidget {

  bool isHiddenIcon = true;

  @override
  Widget build(BuildContext context) {
    Widget heading() {
      return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: Center(
            child: Text('Login',
                style:
                    BlackTextStyle.copyWith(fontSize: 24, fontWeight: medium))),
      );
    }
    Widget inputEmail() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.black12,
          style: const TextStyle(color: Colors.black),
          // obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: primaryTextColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: inputTextColor)),
            // prefixIcon: Icon(Icons.person),
            hintText: "Email",
            hintStyle:
                BlackTextStyle.copyWith(fontSize: 14, color: inputTextColor),
            prefixIcon: new IconButton(
              icon: new Image.asset(
                'assets/icons/icon-message.png',
                color: inputTextColor,
                width: 26.0,
              ),
              onPressed: null,
            ),
          ),
        ),
      );
    }
    Widget inputPassword() {
      return Container(
        margin: EdgeInsets.only(top: 18),
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.black12,
          style: const TextStyle(color: Colors.black),
          // obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: primaryTextColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: inputTextColor)),
            // prefixIcon: Icon(Icons.person),
            hintText: "Password",
            hintStyle:
                BlackTextStyle.copyWith(fontSize: 14, color: inputTextColor),
            prefixIcon: new IconButton(
              icon: new Image.asset(
                'assets/icons/icon-password.png',
                color: inputTextColor,
                width: 26.0,
              ),
              onPressed: null,
            ),
          ),
        ),
      );
    }
    Widget forgetPassword(){
      return Container(
        margin: EdgeInsets.only(
          top: 18
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/forget-password');
              },
              child: Text('Forget Password?', style: BlackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium
              ),),
            )
          ],
        ),
      );
    }

    Widget btnLogin(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: primaryTextColor
        ),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/verification-page');
          }, 
          child: Text('Login', style: BackgroundTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium
          ),)
        ),
      );
    }

    Widget textLogin(){
      return Container(
        margin: EdgeInsets.only(
          top: 12
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dont’s have an account?', style: BlackTextStyle.copyWith(
              fontSize: 14, fontWeight: medium
            ),),
            SizedBox(
              width: 3,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Register', style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium
              ),),
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child:  Container(
          margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
          child: Column(
            children: [
              heading(), 
              inputEmail(),
              inputPassword(),
              forgetPassword(),
              btnLogin(),
              textLogin(),
            ],
          ),
        ),
    ),
    bottomNavigationBar: Row(
      children: [
        Image.asset('assets/imgs/login-image.png', width: 375,)
      ],
    ),
    );
  }

}
