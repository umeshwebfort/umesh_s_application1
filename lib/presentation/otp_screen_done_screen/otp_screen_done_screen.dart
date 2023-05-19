import 'package:flutter/material.dart';
import 'package:umesh_s_application1/core/app_export.dart';
import 'package:umesh_s_application1/widgets/custom_button.dart';
import 'package:umesh_s_application1/widgets/custom_text_form_field.dart';

class OtpScreenDoneScreen extends StatelessWidget {
  TextEditingController enterotpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Text(
                  "OTP Verification",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular25,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "Check your phone for SMS Code",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular16,
                ),
              ),
              Container(
                height: getVerticalSize(
                  643,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 35,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          629,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: ColorConstant.red700,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                25,
                              ),
                            ),
                            topRight: Radius.circular(
                              getHorizontalSize(
                                25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          left: 35,
                          top: 19,
                          right: 35,
                          bottom: 19,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMyrentworklogo,
                              height: getVerticalSize(
                                138,
                              ),
                              width: getHorizontalSize(
                                152,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 93,
                              ),
                              child: Text(
                                " +91 - 99999 55555",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular17,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 3,
                                    ),
                                    child: Text(
                                      "Change number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14Pink900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: enterotpController,
                              hintText: "Enter OTP",
                              margin: getMargin(
                                left: 1,
                                top: 29,
                                right: 6,
                              ),
                              variant: TextFormFieldVariant.UnderLineGray500,
                              fontStyle: TextFormFieldFontStyle.InterRegular14,
                              textInputAction: TextInputAction.done,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Resend OTP in 21 sec...",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                  Text(
                                    "Re-send OTP",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14Pink900,
                                  ),
                                ],
                              ),
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                40,
                              ),
                              width: getHorizontalSize(
                                165,
                              ),
                              text: "Verify Me",
                              margin: getMargin(
                                top: 52,
                                bottom: 137,
                              ),
                              shape: ButtonShape.CircleBorder20,
                              padding: ButtonPadding.PaddingAll9,
                              fontStyle: ButtonFontStyle.InterRegular18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
