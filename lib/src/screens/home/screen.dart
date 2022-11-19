import 'package:coffee_app_ui/exports.dart';
import 'package:coffee_app_ui/src/constant/coffee.dart';
import 'package:coffee_app_ui/src/screens/home/components/coffee_card.dart';
import 'package:coffee_app_ui/src/screens/home/components/special_card.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 30.h),
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
                //COFFEE CARDS
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(allCoffee.length,
                          (index) => coffeeCard(coffee: allCoffee[index]))),
                ),
                //SPECIAL FOR YOU

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  child: KText(
                    'Special for you',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                    color: CustomColors.defaultTextColor,
                  ),
                ),
                specialCard(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
