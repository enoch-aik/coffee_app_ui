import 'package:coffee_app_ui/exports.dart';
import 'package:coffee_app_ui/src/widgets/text.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/tab_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: KScaffold(
        backgroundColor: CustomColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //APPBAR AND PROFILE AVATAR
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/svg/drawer.svg'),
                    Image.asset('assets/images/profile_avatar.png'),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h, bottom: 25.h),
                  child: KText(
                    'Find the best\nCoffee to your taste',
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp,
                    color: CustomColors.defaultTextColor,
                  ),
                ),

                SizedBox(
                  height: 50.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 268.w,
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              hintText: 'Find your coffee',
                              prefixIcon: Icon(
                                Icons.search,
                                color: CustomColors.textFieldHintColor,
                              )),
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset('assets/svg/filter.svg')),
                    ],
                  ),
                ),
                //TAB BAR ==> Espresso Latte Cappuccino Cafetiere
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  child: TabBar(
                      labelColor: CustomColors.brown,
                      indicator: RoundedTabIndicator(color: CustomColors.brown),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: CustomColors.brown,
                      labelStyle: TextStyle(
                        fontFamily: 'SP Pro Display',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      padding: EdgeInsets.zero,
                      isScrollable: true,
                      unselectedLabelColor: CustomColors.defaultTextColor,
                      tabs: const [
                        Tab(
                          text: 'Espresso',
                        ),
                        Tab(
                          text: 'Latte',
                        ),
                        Tab(
                          text: 'Cappuccino',
                        ),
                        Tab(
                          text: 'Cafetière',
                        ),
                      ]),
                ),
//COFFEE CARD
                Container(
                  width: 160.w,
                  //height: 220.h,
                  decoration: BoxDecoration(
                      color: CustomColors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25.r),
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.r),
                          child: Stack(
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  'assets/images/espresso.png',
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25.r),
                                      topRight: Radius.circular(25.r)),
                                  child: Container(
                                    width: 73.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                        color: CustomColors.brown,
                                        //color: Color.fromRGBO(0, 0, 0, 0.9),
                                        gradient: LinearGradient(colors: [
                                          CustomColors.brownTextColor
                                              .withOpacity(0.5),
                                          CustomColors.brownTextColor
                                        ])),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: CustomColors.starColor,
                                          size: 15,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5.w),
                                          child: KText(
                                            '4.5',
                                            color: CustomColors.white,
                                            fontSize: 12.sp,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KText(
                                    'Espresso',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 15.h),
                                    child: KText(
                                      'with Oat Milk',
                                      fontSize: 10.sp,
                                      color: CustomColors.black.withOpacity(0.6),
                                    ),
                                  ),
                                  Text.rich(TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '\$',
                                            style: defaultStyle.copyWith(
                                                color: CustomColors.brown)),
                                        const TextSpan(
                                          text: '4.20',
                                        )
                                      ],
                                      style: defaultStyle.copyWith(
                                          fontWeight: FontWeight.w600)))
                                ],
                              ),
                            ),
                            Container(
                              height: 52.w,
                              width: 52.w,
                              decoration: BoxDecoration(
                                  color: CustomColors.brown,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.r),
                                      bottomRight: Radius.circular(25.r))),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.add,
                                color: CustomColors.white,
                                size: 27,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
