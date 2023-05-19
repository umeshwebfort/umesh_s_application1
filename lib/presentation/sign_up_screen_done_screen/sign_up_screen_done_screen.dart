import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:umesh_s_application1/core/app_export.dart';
import 'package:umesh_s_application1/widgets/custom_button.dart';
import 'package:umesh_s_application1/widgets/custom_phone_number.dart';

class SignUpScreenDoneScreen extends StatelessWidget {
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.pink900,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 47,
                    top: 18,
                  ),
                  child: Text(
                    "Enter Mobile Number",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular25,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      "We are using phone number for verification",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular16,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    642,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 37,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            628,
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
                          margin: getMargin(
                            top: 14,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 18,
                            right: 26,
                            bottom: 18,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL25,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                margin: getMargin(
                                  left: 72,
                                ),
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: ColorConstant.gray40001,
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 19,
                                        bottom: 17,
                                      ),
                                      child: CountryPickerUtils
                                          .getDefaultFlagImage(
                                        selectedCountry,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 13,
                                        top: 8,
                                        bottom: 6,
                                      ),
                                      child: CountryPickerUtils
                                          .getDefaultFlagImage(
                                        selectedCountry,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 18,
                                        right: 6,
                                      ),
                                      child: CountryPickerUtils
                                          .getDefaultFlagImage(
                                        selectedCountry,
                                      ),
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
                                text: "Send OTP",
                                margin: getMargin(
                                  top: 49,
                                  bottom: 179,
                                ),
                                shape: ButtonShape.CircleBorder20,
                                padding: ButtonPadding.PaddingAll9,
                                fontStyle: ButtonFontStyle.InterRegular18,
                                alignment: Alignment.center,
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
      ),
    );
  }
}
