import 'package:flutter/material.dart';
import 'package:travelingo_apps/template.dart';

class ForgetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
      child:Scaffold(
        resizeToAvoidBottomInset: true,
          body: ListView(
        children: 
          [Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: Center(
                    child: Text(
                      'Forget Password',
                      style:
                          BlackTextStyle.copyWith(fontSize: 24, fontWeight: medium),
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Image.asset(
                'assets/imgs/forget-password.png',
                width: 277,
              )),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'Enter your email address to \\nverify your account',
                  style: BlackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 24, left: defaultMargin, right: defaultMargin),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.black12,
                  style: const TextStyle(color: Colors.black),
                  // obscureText: true,
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: primaryTextColor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: inputTextColor)),
                    // prefixIcon: Icon(Icons.person),
                    hintText: "Email",
                    hintStyle: BlackTextStyle.copyWith(
                        fontSize: 14, color: inputTextColor),
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
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 30, left: defaultMargin, right: defaultMargin),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryTextColor),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context, 
                        builder: (context){
                          return AlertDialog(
                            title: Text('Notification', style: BlackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium
                            ), textAlign: TextAlign.center,),
                            content: Container(
                              width: 150,
                              height: 150,
                              child: Column(
                                children: [
                                  Text('We have sent a password verification to your email, please check again', style: BlackTextStyle.copyWith(
                                    fontSize: 14,
                                  ), textAlign: TextAlign.center,),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Text('01 : 00', style: BlackTextStyle.copyWith(
                                    fontSize: 14,
                                  ),),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: primaryTextColor
                                    ),
                                    child: TextButton(
                                      onPressed: (){}, 
                                      child: Text('Send Again', style: BackgroundTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: medium
                                      ),)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      );
                    },
                    child: Text(
                      'Send',
                      style: BackgroundTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    )),
              )
            ],
          ),
        ],
      )),
    );
  }
}
