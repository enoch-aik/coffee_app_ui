import 'package:coffee_app_ui/exports.dart';
import 'package:coffee_app_ui/src/widgets/text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ONBOARDING SCREEN
    return KScaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 31.h, 27.w, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //COFFEE IMAGE
            Image.asset(
              'assets/images/coffee.png',
              height: 360.96.h,
              width: 320.w,
              alignment: Alignment.center,
              filterQuality: FilterQuality.high,
            ),
            //TEXTS
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80.h, bottom: 20.h),
                    child: KText(
                      'Stay Focused',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.brownTextColor,
                    ),
                  ),
                  KText(
                    'Get the cup filled of your choice to stay\nfocused and awake. Different type of coffee\nmenu, hot latte cappuccino',
                    color: CustomColors.fadedTextColor,
                    textAlign: TextAlign.center,lineHeight: 1.5,
                  ),
                ],
              ),
            ),
            //BUTTON
            Padding(
                padding: EdgeInsets.only(top: 77.h),
                child: SizedBox(
                  height: 60.h,
                  width: 151.w,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(CustomColors.brown),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.r))),
                        elevation: MaterialStateProperty.all(5)),
                    onPressed: () {
                      context.go('/home');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KText(
                          'Dive In',
                          color: CustomColors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.w),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
