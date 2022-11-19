import 'package:coffee_app_ui/exports.dart';

Widget specialCard() => Container(
      width: 329.w,
      height: 145.h,
      decoration: BoxDecoration(
          color: CustomColors.brown, borderRadius: BorderRadius.circular(25.r)),
      padding: EdgeInsets.all(10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/latte.png'),
          SizedBox(
            width: 149.w,
            height: 103.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special mixed and \nbrewed which you\nmust try!',
                  style: GoogleFonts.inter(
                      color: CustomColors.white, fontWeight: FontWeight.w600),
                ),
                Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: '\$11.00  ',
                            style: defaultStyle.copyWith(
                                color: CustomColors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.inter().fontFamily)),
                        const TextSpan(
                          text: '\$20.3',
                        )
                      ],
                      style: defaultStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: CustomColors.white.withOpacity(0.4),
                          fontFamily: GoogleFonts.inter().fontFamily)),
                )
              ],
            ),
          )
        ],
      ),
    );
