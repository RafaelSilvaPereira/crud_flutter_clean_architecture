import 'package:crud_flutter_clean_architecture/views/configuration/styles/index.dart';
import 'package:flutter/material.dart';

import 'screen_data.dart';
import 'style_guide.dart';





/// [IStyleWidget]
///
/// This Interface is standardization for all Widgets that's use StyleGuide
/// and ScreenData classes
abstract class IStyledWidget {
  final StyleGuide styleGuide;
  final ScreenData screenData;


  /// [IStyledWidget] construct initializes the class implementation with the parameters
  ///
  /// [StyleGuide] styleGuide:
  /// the guide of styles of application
  ///
  /// [ScreenData] screenData:
  /// the data of screen
  IStyledWidget(this.styleGuide, this.screenData);
  

  

  
 
  /// [onBuild] this method is called into build method's
  Widget onBuild(BuildContext context);
}