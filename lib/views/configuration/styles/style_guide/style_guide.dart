import 'dart:convert';

import 'property.dart';
import 'style.dart';
import 'style_set.dart';

/// [StyleGuide] Class Refers to any style properties
///
/// @created_by: Rafael S. Pereira
///
/// @created_by: Marcelo F. S. Andrade
///
/// @at: 15/10/2020
class StyleGuide {
  /// [groups] it's a map from
  /// [String] it's a group name,
  /// [StyleSet] it's a groups value
  ///
  /// simple:
  ///
  /// {
  ///
  ///   'buttons': StyleSet(
  ///     {
  ///       'primary': Style(
  ///         {
  ///           'color': Property(Colors.red),
  ///           'font-size': Property(10),
  ///         }
  ///       ),
  ///       'secondary': Style(
  ///         {
  ///           'color': Property(Colors.green),
  ///           'font-size': Property(15),
  ///         }
  ///       )
  ///     }
  ///   ),
  /// }
  final Map<String, StyleSet> groups;

  const StyleGuide(this.groups);

  /// [StyleGuide.fromMap] is a sugar syntax to create a StyleGuide from a given
  ///
  /// [ Map<String, Map<String, Map<String, dynamic>>>] builder
  factory StyleGuide.fromMap(
      {Map<String, Map<String, Map<String, dynamic>>> builder}) {
    return StyleGuide(builder.map(
      (styleGuideKeys, styles) => MapEntry(
        styleGuideKeys,
        StyleSet(
          styles.map(
            (styleSetKey, styles) => MapEntry(
              styleSetKey,
              Style(
                styles.map(
                  (styleKey, properties) =>
                      MapEntry(styleKey, Property(properties)),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }

  /// [StyleGuide.fromJson] is a sugar syntax to create a Style Guide from a given
  ///
  /// [String] builder in json format
  factory StyleGuide.fromJson(String builder) {
    return StyleGuide.fromMap(builder: json.decode(builder));
  }

  /// [get] a [dynamic] value from a property chosen by [query]
  ///
  /// Any queries are like [String] and they are written in the format
  ///
  /// 'group_name > style_name : property_name'
  ///
  dynamic get(String query) {
    final args = query.split('>');

    final styleName = args[0].trim();

    final styleGroup = groups[styleName];

    return styleGroup.get(args[1].trim());
  }

  @override
  String toString() {
    return 'StyleGuide{groups: ${groups.toString()}}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StyleGuide &&
          runtimeType == other.runtimeType &&
          groups == other.groups;

  @override
  int get hashCode => groups.hashCode;
}
