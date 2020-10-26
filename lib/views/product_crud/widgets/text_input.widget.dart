import 'package:flutter/material.dart';

import '../../configuration/styles/index.dart';

class TextInput extends StatelessWidget implements IStyledWidget {
  final StyleGuide styleGuide;
  final ScreenData screenData;
  final Function onChanged;
  final String placeholder;

  const TextInput(
      {Key key,
      @required this.styleGuide,
      @required this.screenData,
      @required this.onChanged,
      @required this.placeholder,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: TextStyle(
          color: styleGuide.get('inputs > colors : primary'),
          backgroundColor: styleGuide.get('inputs > bg-colors : primary')),
      decoration: InputDecoration(
        hintText: placeholder,
      ),
    );
  }

  @override
  Widget onBuild(BuildContext context) {
    return Container(
      width: screenData.dim('50w'),
      height: screenData.dim('50h'),
      child: TextFormField(
        onChanged: onChanged,
        style: TextStyle(
            color: styleGuide.get('inputs > colors : primary'),
            backgroundColor: styleGuide.get('inputs > bg-colors : primary')),
        decoration: InputDecoration(
          hintText: placeholder,
        ),
      ),
    );
  }
}
