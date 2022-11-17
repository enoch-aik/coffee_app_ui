import 'package:coffee_app_ui/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KScaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(leading: SvgPicture.asset('assets/drawer.svg'),),
      body: Column(
        children: [],
      ),
    );
  }
}
