import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course/Theme/styles/colors.dart';


class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    this.icon,
    this.press, this.colorCont,
  }) : super(key: key);

  final String? icon;
  final Color? colorCont;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: 10.w),
        padding: EdgeInsets.all(12.r),
        height: 40.h,
        width: 40.w,
        decoration:  BoxDecoration(
          color:colorCont?? kLightColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}
