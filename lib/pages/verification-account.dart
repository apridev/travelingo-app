import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelingo_apps/template.dart';

class VerificationAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                ),
                child: Text(
                  'Verification Account',
                  style:
                      BlackTextStyle.copyWith(fontSize: 24, fontWeight: medium),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Enter the verification code that\n we have sent to your email',
              style: BlackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              textAlign: TextAlign.center,
            ),
            Form(
                child: Container(
              margin: EdgeInsets.only(
                  top: 24, left: defaultMargin, right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Container(
              margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryTextColor),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/main-page-home', (route) => false);
                  },
                  child: Text(
                    'Verify',
                    style: BackgroundTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 18
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't get the code?", style: BlackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Resend', style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
