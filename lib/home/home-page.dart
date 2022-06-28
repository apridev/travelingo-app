import 'package:flutter/material.dart';
import 'package:travelingo_apps/product-page.dart';
import 'package:travelingo_apps/template.dart';
import 'package:travelingo_apps/widgets/categories-tile.dart';

class HomePage extends StatelessWidget {

  bool intLike = true;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            left: defaultHome,
            right: defaultHome),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Boy!',
                  style: BlackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'What are you looking for?',
                  style:
                      BlackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: BackgroundTextColor1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/icon-bell.png',
                    width: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget searchForm() {
      return Container(
        margin: EdgeInsets.only(top: 24, left: defaultHome, right: defaultHome),
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.black12,
          style: const TextStyle(color: Colors.black),
          // obscureText: true,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 18, vertical: 15),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: primaryTextColor)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: inputTextColor)),
              // prefixIcon: Icon(Icons.person),
              hintText: "Search places ",
              hintStyle:
                  BlackTextStyle.copyWith(fontSize: 14, color: inputTextColor),
              suffixIcon: Icon(
                Icons.search,
                color: inputTextColor,
              )),
        ),
      );
    }

    Widget categoriesTitle() {
      return Container(
          margin:
              EdgeInsets.only(top: 18, left: defaultHome, right: defaultHome),
          child: Text('Categories',
              style:
                  BlackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)));
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 18,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: defaultHome,
                ),
                width: 83,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryTextColor),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Hotels',
                      style: BackgroundTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    )),
              ),
              CategoriesTile(name: 'Flights'),
              CategoriesTile(name: 'Attractions'),
              CategoriesTile(name: 'Mart'),
              CategoriesTile(name: 'Apartement'),
              SizedBox(
                width: defaultHome,
              ),
            ],
          ),
        ),
      );
    }

    Widget popularTitle() {
      return Container(
        margin: EdgeInsets.only(top: 18, left: defaultHome, right: defaultHome),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Destinations',
              style:
                  BlackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      );
    }

    Widget productPopular() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(left: defaultHome),
          child: Row(
            children: myList.map((data) {
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/detail-page');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 12, right: 12),
                  width: 148,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: BackgroundTextColor1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                        width: 139,
                        height: 91,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                                '${data['gambar']}'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 4, left: 8, right: 8),
                          child: Text(
                            '${data['namaTempat']}',
                            style: BlackTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Image.asset(
                            '${data['rating']}',
                            width: 90,
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 4, left: 8, right: 8),
                        child: Row(
                          children: [
                            Text(
                              'Starting At',
                              style: BlackTextStyle.copyWith(
                                  fontSize: 14, fontWeight: medium),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '\$${data['harga']}',
                              style: BlackTextStyle.copyWith(
                                  fontSize: 14, fontWeight: medium),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    }

     Widget peopleRecommendedTitle() {
      return Container(
        margin: EdgeInsets.only(top: 18, left: defaultHome, right: defaultHome),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'People Recommended',
              style:
                  BlackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      );
    }

    Widget peopleRecommended(){
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultHome,
          ),
          child: Row(
            children: listRecommended.map((data){
              return Container(
                margin: EdgeInsets.only(
                  top: 18,
                  right: 12
                ),
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: BackgroundTextColor1
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 8,
                        left: 8,
                        right: 8,
                        bottom: 8
                      ),
                      width: 74,
                      height: 74,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: BackgroundTextColor,
                        image: DecorationImage(
                          image: AssetImage('${data['gambar']}')
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 4, vertical: 8
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${data['namaTempat']}', style: BlackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 8
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/icons/icon-location.png', width: 18,),
                                SizedBox(
                                  width: 4,
                                ),
                                Text('${data['tempat']}', style: BlackTextStyle.copyWith(
                                  fontSize: 12,
                                ),)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('\$${data['harga']}', style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium
                          ),)
                        ],
                      ),
                    ),
                   
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      );
    }

    Widget mostVisitedTitle() {
      return Container(
        margin: EdgeInsets.only(top: 18, left: defaultHome, right: defaultHome),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Most Visited',
              style:
                  BlackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      );
    }

    Widget mostVisited(){
      return Column(
        children: myList.map((data){
          return Container(
            margin: EdgeInsets.only(
              top: 12,
              left: 12,
              right: 12
            ),
            width: double.infinity,
            height: 111,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: BackgroundTextColor1
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    left: 8,
                    right: 8,
                    bottom: 8
                  ),
                  width: 80,
                  height: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: BackgroundTextColor1,
                    image: DecorationImage(
                      image: AssetImage('${data['gambar']}'), fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${data['nama']}', style: BlackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium
                      ),),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/icon-location.png', width: 18,),
                          SizedBox(
                            width: 4,
                          ),
                          Text('${data['namaTempat']}', style: BlackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Image.asset('assets/icons/icon-star.png', width: 90,),
                      SizedBox(
                        height: 4,
                      ),
                      Text('\$${data['harga']}', style: BlackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/icons/icon-like.png', width: 30,),
                      ],
                    ),
                  )
                )
              ],
            ),
          );
        }).toList(),
      );
    }

    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                searchForm(),
                categoriesTitle(),
                categories(),
                popularTitle(),
                productPopular(),
                peopleRecommendedTitle(),
                peopleRecommended(),
                mostVisitedTitle(),
                mostVisited(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
