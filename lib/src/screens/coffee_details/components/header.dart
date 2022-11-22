import 'dart:ui';

import 'package:coffee_app_ui/exports.dart';
import 'package:flutter_svg/svg.dart';

Widget coffeeDetailsHeader(BuildContext context){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40.r),
      child: SizedBox(
        width: 350.w,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/espresso_large.png',
              fit: BoxFit.fitWidth,
              filterQuality: FilterQuality.high,
            ),
            Positioned(
                left: 11.w,
                top: 22.h,
                child: InkWell(
                    onTap: (){context.pop();},
                    child: SvgPicture.asset('assets/svg/back_icon.svg'))),
            Positioned(
                right: 11.w,
                top: 22.h,
                child: SvgPicture.asset('assets/svg/like_icon.svg')),
            //COFFEE DETAILS WITH  BACKDROP FILTER

            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.r),
                child: SizedBox(
                  //height: 130.h,
                  width: 350.w,
                  child: BackdropFilter(
                    filter:
                    ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
                    child: Container(
                      color: CustomColors.black.withOpacity(0.3),
                      padding:
                      EdgeInsets.fromLTRB(27.w, 25.h, 26.w, 18),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              KText(
                                'Espresso',
                                fontSize: 24.sp,
                                color: CustomColors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(height: 2.h),
                              KText('with Chocolate',
                                  fontSize: 12.sp,
                                  color: CustomColors.white
                                      .withOpacity(0.8)),
                              SizedBox(height: 21.h),
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: CustomColors.starColor,
                                    size: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.w),
                                    child: KText(
                                      '4.8',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: CustomColors.white,
                                    ),
                                  ),
                                  KText('(6,098)',
                                      color: CustomColors.white
                                          .withOpacity(0.8),
                                      fontSize: 10.sp)
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/coffee_icon.svg',
                                    width: 38.w,
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsets.only(left: 30.w),
                                    child: SvgPicture.asset(
                                      'assets/svg/chocolate_icon.svg',
                                      width: 58.w,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: KText(
                                  'Medium Roasted',
                                  color: CustomColors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}