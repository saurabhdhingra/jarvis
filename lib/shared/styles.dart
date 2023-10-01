import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextStyle extends TextStyle {
  

  const CustomTextStyle._style(TextStyle style) : super();
}

abstract class CustomTextStyles {
  static const _parent = TextStyle(color: Colors.black87);

  static final headline1 = CustomTextStyle._style(
    _parent.copyWith(
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
  );

  static final headline2 = CustomTextStyle._style(
    _parent.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
  );

  static final headline3 = CustomTextStyle._style(
    _parent.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
  );

  static final headingStyle = CustomTextStyle._style(
    _parent.copyWith(
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),
  );

  static final bodyStyle = CustomTextStyle._style(
    _parent.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
  );

  static final subHeadingStyle = CustomTextStyle._style(
    _parent.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
  );

  static final captionStyle = CustomTextStyle._style(
    _parent.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}
