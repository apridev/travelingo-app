import 'package:flutter/material.dart';
import 'package:travelingo_apps/template.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget heading() {
      return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: Center(
            child: Text('Register',
                style:
                    BlackTextStyle.copyWith(fontSize: 24, fontWeight: medium))),
      );
    }

  Widget inputName() {
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
            hintText: "Name",
            hintStyle:
                BlackTextStyle.copyWith(fontSize: 14, color: inputTextColor),
            prefixIcon: new IconButton(
              icon: new Image.asset(
                'assets/icons/icon-profile.png',
                color: inputTextColor,
                width: 26.0,
              ),
              onPressed: null,
            ),
          ),
        ),
      );
    }

  Widget inputEmail() {
      return Container(
        margin: EdgeInsets.only(top: 24),
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
        margin: EdgeInsets.only(top: 24),
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
          onPressed: (){}, 
          child: Text('Register', style: BackgroundTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium
          ),)
        ),
      );
    }

    Widget registerAccount(){
      return Container(
        margin: EdgeInsets.only(
          top: 50
        ),
        child: Column(
          children: [
            Image.asset('assets/imgs/register-account.png')
          ],
        ),
      );
    }

    Widget googleAccount(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: GoogleTextColor, width: 2
          ),
        ),
        child: TextButton(
          onPressed: (){}, 
          child: Text('Google', style: GoogleTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium
          ),)
          )
      );
    }
    Widget facebookAccount(){
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          bottom: 50
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: FacebookTextColor, width: 2
          ),
        ),
        child: TextButton(
          onPressed: (){}, 
          child: Text('Facebook', style: FacebookTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium
          ),)
          )
      );
    }

    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin
              ),
              child: Column(
                children: [
                  heading(),
                  inputName(),
                  inputEmail(),
                  inputPassword(),
                  btnLogin(),
                  registerAccount(),
                  googleAccount(),
                  facebookAccount(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar:  Container(
          margin: EdgeInsets.only(
            bottom: 10
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?', style: BlackTextStyle.copyWith(
                fontSize: 14, fontWeight: medium
              ),),
              SizedBox(
                width: 3,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Login', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
