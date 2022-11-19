import 'package:coffee_app_ui/exports.dart';
import 'package:coffee_app_ui/model/coffee.dart';

Widget coffeeCard({required Coffee coffee}) {
  return Padding(
    padding: EdgeInsets.only(right: 8.w),
    child: Container(
      width: 160.w,
      //height: 220.h,
      decoration: BoxDecoration(
          color: CustomColors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1))]),
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
                      coffee.imageUrl /*'assets/images/espresso.png'*/,
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
                              CustomColors.brownTextColor.withOpacity(0.5),
                              CustomColors.brownTextColor
                            ])),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: CustomColors.starColor,
                              size: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: KText(
                                coffee.rating.toString(),
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
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KText(
                        coffee.name,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: KText(
                          coffee.supplement ?? '',
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
                            TextSpan(
                              text: coffee.price.toString(),
                            )
                          ],
                          style:
                              defaultStyle.copyWith(fontWeight: FontWeight.w600)))
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      bottomRight: Radius.circular(25.r)),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 52.w,
                      width: 52.w,
                      decoration: BoxDecoration(
                        color: CustomColors.brown,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.add,
                        color: CustomColors.white,
                        size: 27,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
