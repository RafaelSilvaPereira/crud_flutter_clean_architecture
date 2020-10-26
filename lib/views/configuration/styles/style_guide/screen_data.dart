import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:flutter_screenutil/screenutil.dart' show ScreenUtil;
import 'package:flutter/material.dart';

/// [ScreenData] this class represents a dimensions of screen
///
/// @created_by: Rafael S Pereira
///
/// @created_by: Marcelo F. S Andrade
/// @at: 15/10/2020
class ScreenData {
  const ScreenData();

  /// [init]: init a ScreenUtil from a
  ///
  /// [BuildContext] [context]
  ///
  void init(BuildContext context) {
    ScreenUtil.init(context);
  }

  /// [dim] get a [double] relative  dimension based  on a screen percent's
  double dim(String dim) {
    dim = dim.toLowerCase().replaceAll(RegExp(r"\s+"), "");

    String type = dim[dim.length - 1];
    num value = (double.parse(dim.substring(0, dim.length - 1))) * 0.01;
    double result = 0;
    if (type == 'w') {
      result = value.w;
    } else if (type == 'h') {
      result = value.h;
    }
    
    return result;
  }
}
