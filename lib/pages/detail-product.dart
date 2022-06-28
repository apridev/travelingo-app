import 'package:flutter/material.dart';
import 'package:travelingo_apps/template.dart';
import 'package:travelingo_apps/widgets/akses-point.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundTextColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              // ? mengukur gambar
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/imgs/product1.png'),
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white30),
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: BlackTextColor,
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icons/icon-like-bg.png',
                                    width: 30,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // todo menurunkan konten
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ! Menghapus Garis pada Content
                    Align(
                      child: Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // !Isi Widget Disini
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Eiffel Tower',
                                  style: BlackTextStyle.copyWith(
                                      fontSize: 26, fontWeight: medium),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Paris, France',
                                  style: BlackTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: starTextColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: starTextColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: starTextColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: starTextColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: starTextColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '(4321)',
                                      style: BlackTextStyle.copyWith(
                                          fontSize: 16, fontWeight: reguler),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$380.000',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 20, fontWeight: semiBold),
                                ),
                                Text(
                                  '/per night',
                                  style: BlackTextStyle.copyWith(
                                      fontSize: 16, fontWeight: medium),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Divider(
                          color: Colors.black26,
                          height: 1.5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 24
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: BackgroundTextColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Text('Check in', style: BlackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: medium
                                          ),),
                                        ),
                                        Center(
                                          child: Text('12 April', style: BlackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: medium
                                          ),),
                                        ),
                                      ],
                                    ),
                              ),
                              Icon(Icons.arrow_forward_rounded, size: 30, color: BlackTextColor,),
                              Container(
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: BackgroundTextColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Text('Check out', style: BlackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: medium
                                          ),),
                                        ),
                                        Center(
                                          child: Text('13 April', style: BlackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: medium
                                          ),),
                                        ),
                                      ],
                                    ),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: BackgroundTextColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Text('Guest', style: BlackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: medium
                                          ),),
                                        ),
                                        Center(
                                          child: Text('1', style: BlackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontWeight: medium
                                          ),),
                                        ),
                                      ],
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 24
                          ),
                          child: Text('Our Facilities', style: BlackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 18
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AksesPoint(
                                imgs: 'assets/icons/icon-wifi.png'
                              ),
                              AksesPoint(
                                imgs: 'assets/icons/icon-coffee.png'
                              ),
                              AksesPoint(
                                imgs: 'assets/icons/icon-gym.png'
                              ),
                              AksesPoint(
                                imgs: 'assets/icons/icon-badroom.png'
                              ),
                              AksesPoint(
                                imgs: 'assets/icons/icon-bus.png'
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 50
                          ),
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: primaryTextColor,
                          ),
                          child: TextButton(
                            onPressed: (){}, 
                            child: Text('Book Now', style: BackgroundTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold
                            ),)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
