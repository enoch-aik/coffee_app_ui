import 'package:coffee_app_ui/exports.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? error;

  const ErrorScreen({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(error.toString()),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 50.h,
              width: 150.w,
              child: InkWell(
                onTap: () {
                  context.go('/');
                },
                child: Card(
                  //color: CustomColors.appColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  child: const Center(child: Text('GO HOME')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
