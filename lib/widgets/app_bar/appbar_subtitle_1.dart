import 'package:flutter/material.dart';
import 'package:umesh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle1 extends StatelessWidget {
  AppbarSubtitle1({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterRegular16Gray100.copyWith(
            color: ColorConstant.gray100,
          ),
        ),
      ),
    );
  }
}