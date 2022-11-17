import 'package:coffee_app_ui/core/helpers/keyboard.dart';
import 'package:coffee_app_ui/exports.dart';

class KScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomSheet;
  final Widget? floatingActionButton;
  final List<Widget>? persistentFooterButtons;
  final Widget? drawer;
  final void Function(bool)? onDrawerChanged;
  final Widget? endDrawer;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool? extendBodyBehindAppBar;
  final bool? resizeToAvoidBottomInset;
  final bool? extendBody;

  const KScaffold(
      {Key? key,
      this.appBar,
      this.backgroundColor,
      this.floatingActionButton,
      this.body,
      this.extendBody,
      this.bottomNavigationBar,
      this.onDrawerChanged,
      this.extendBodyBehindAppBar,
      this.persistentFooterButtons,
      this.drawer,
      this.resizeToAvoidBottomInset,
      this.endDrawer,
      this.bottomSheet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          KeyboardUtil.hideKeyboard(context);
        },
        child: Scaffold(
          backgroundColor: backgroundColor,
          extendBodyBehindAppBar: extendBodyBehindAppBar ?? false,
          appBar: appBar,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          floatingActionButton: floatingActionButton,
          extendBody: extendBody ?? false,
          bottomNavigationBar: bottomNavigationBar,
          bottomSheet: bottomSheet,
          drawer: drawer,
          persistentFooterButtons: persistentFooterButtons,
          endDrawer: endDrawer,
          onDrawerChanged: onDrawerChanged,
          body: body,
        ),
      ),
    );
  }
}
