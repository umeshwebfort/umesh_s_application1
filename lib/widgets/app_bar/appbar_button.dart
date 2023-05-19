import 'package:flutter/material.dart';
import 'package:umesh_s_application1/core/app_export.dart';
import 'package:umesh_s_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({this.margin, this.onTap});

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
        child: CustomButton(
          height: getVerticalSize(
            30,
          ),
          width: getHorizontalSize(
            126,
          ),
          text: "Give Credit",
          variant: ButtonVariant.FillRed700,
          fontStyle: ButtonFontStyle.InterRegular16Gray100,
        ),
      ),
    );
  }
}
