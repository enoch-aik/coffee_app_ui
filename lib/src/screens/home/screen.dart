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
                    color: CustomColors.darkTextColor,
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
                      unselectedLabelColor: CustomColors.darkTextColor,
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
                  height: 220.h,
                  decoration: BoxDecoration(
                      color: CustomColors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25.r),
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1))
                      ]),
                  child: Column(
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
                                child: Container(
                                  width: 73.w,
                                  height: 26.h,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.9),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25.r),
                                          topRight: Radius.circular(25.r))),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,size: 15,
                                      ),
                                      KText(
                                        '4.5',
                                        color: CustomColors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
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
