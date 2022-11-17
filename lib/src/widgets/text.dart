import 'package:coffee_app_ui/exports.dart';

class KText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? lineHeight;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final TextOverflow? overflow;

  const KText(this.text,
      {Key? key,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.lineHeight,
      this.textAlign,
      this.decoration,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        overflow: overflow,
        style: TextStyle(
          fontFamily: 'SP Pro Display',
          decoration: decoration,
          fontSize: fontSize ?? 14.sp,
          height: lineHeight,
          color: color ?? CustomColors.brownTextColor,
          fontWeight: fontWeight ?? FontWeight.w400,
        ));
  }
}
