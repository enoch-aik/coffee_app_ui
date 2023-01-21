import 'package:coffee_app_ui/exports.dart';
import 'package:coffee_app_ui/src/constant/coffee.dart';
import 'package:coffee_app_ui/src/screens/coffee_details/components/header.dart';
import 'package:expandable_text/expandable_text.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedChocolate = ValueNotifier(0);
    ValueNotifier<int> selectedSize = ValueNotifier(0);
    return KScaffold(
      backgroundColor: CustomColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //HEADER IMAGE
            coffeeDetailsHeader(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Text(
                      'Description',
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.defaultTextColor),
                    ),
                  ),
                  ExpandableText(
                    coffeeDescription,
                    expandText: 'Read More',
                    collapseText: 'Show less',
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.defaultTextColor),
                    //linkColor: CustomColors.brown,
                    linkStyle: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.brown),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.h, top: 25.h),
                    child: Text(
                      'Choice of Chocolate',
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.defaultTextColor),
                    ),
                  ),
                ],
              ),
            ),
            ValueListenableBuilder(
                valueListenable: selectedChocolate,
                builder: (context, boxState, _) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 24.w),
                        ChoiceChip(
                          label: KText('White Chocolate',
                              color: selectedChocolate.value == 0
                                  ? CustomColors.white
                                  : const Color(0xff777777)),
                          selected: selectedChocolate.value == 0 ? true : false,
                          selectedColor: CustomColors.brown,
                          disabledColor: CustomColors.white,
                          backgroundColor: CustomColors.white,
                          onSelected: (value) {
                            selectedChocolate.value = 0;
                          },
                          side: BorderSide(color: CustomColors.brown),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: ChoiceChip(
                            label: KText('Milk Chocolate',
                                color: selectedChocolate.value == 1
                                    ? CustomColors.white
                                    : const Color(0xff777777)),
                            selected:
                                selectedChocolate.value == 1 ? true : false,
                            selectedColor: CustomColors.brown,
                            disabledColor: CustomColors.white,
                            backgroundColor: CustomColors.white,
                            onSelected: (value) {
                              selectedChocolate.value = 1;
                            },
                            side: BorderSide(color: CustomColors.brown),
                          ),
                        ),
                        ChoiceChip(
                          label: KText('Dark Chocolate',
                              color: selectedChocolate.value == 2
                                  ? CustomColors.white
                                  : const Color(0xff777777)),
                          selected: selectedChocolate.value == 2 ? true : false,
                          selectedColor: CustomColors.brown,
                          disabledColor: CustomColors.white,
                          backgroundColor: CustomColors.white,
                          onSelected: (value) {
                            selectedChocolate.value = 2;
                          },
                          side: BorderSide(color: CustomColors.brown),
                        ),
                      ],
                    ),
                  );
                }),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ValueListenableBuilder<int>(
                  valueListenable: selectedSize,
                  builder: (context, size, _) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 15.h, top: 25.h,left: 10.w),
                              child: Text(
                                'Size',
                                style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: CustomColors.defaultTextColor),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ChoiceChip(
                                  label: KText('S',
                                      color: size == 0
                                          ? CustomColors.white
                                          : const Color(0xff777777)),
                                  selected: size == 0 ? true : false,
                                  selectedColor: CustomColors.brown,
                                  disabledColor: CustomColors.white,
                                  backgroundColor: CustomColors.white,
                                  onSelected: (value) {
                                    selectedSize.value = 0;
                                  },
                                  side: BorderSide(color: CustomColors.brown),
                                ),
                                ChoiceChip(
                                  label: KText('M',
                                      color: size == 1
                                          ? CustomColors.white
                                          : const Color(0xff777777)),
                                  selected: size == 1 ? true : false,
                                  selectedColor: CustomColors.brown,
                                  disabledColor: CustomColors.white,
                                  backgroundColor: CustomColors.white,
                                  onSelected: (value) {
                                    selectedSize.value = 1;
                                  },
                                  side: BorderSide(color: CustomColors.brown),
                                ),
                                ChoiceChip(
                                  label: KText('L',
                                      color: size == 2
                                          ? CustomColors.white
                                          : const Color(0xff777777)),
                                  selected: size == 2 ? true : false,
                                  selectedColor: CustomColors.brown,
                                  disabledColor: CustomColors.white,
                                  backgroundColor: CustomColors.white,
                                  onSelected: (value) {
                                    selectedSize.value = 2;
                                  },
                                  side: BorderSide(color: CustomColors.brown),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 25.h, top: 18.h),
                              child: Text(
                                'Quantity',
                                style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: CustomColors.defaultTextColor),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 35.w,
                                  height: 35.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: CustomColors.brown),
                                  alignment: Alignment.center,
                                  child: KText(
                                    '-',
                                    color: CustomColors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 18.w),
                                  child: KText(
                                    '1',
                                    fontWeight: FontWeight.w500,
                                    color:const Color(0xff2F3548),
                                    fontSize: 25.sp,
                                  ),
                                ),
                                Container(
                                  width: 35.w,
                                  height: 35.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: CustomColors.brown),
                                  alignment: Alignment.center,
                                  child: KText(
                                    '+',
                                    color: CustomColors.white,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
