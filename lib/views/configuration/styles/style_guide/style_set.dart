import './style.dart';
import 'property.dart';

/// [StyleSet] Class Refers to any style properties
///
/// @created_by: Rafael S. Pereira
///
/// @created_by: Marcelo F. S. Andrade
///
/// @at: 15/10/2020
class StyleSet {
  /// [styles] it's a map from
  /// [String] it's a style name,
  /// [Style] is a groups value
  ///
  /// simples:
  ///
  /// {
  ///
  ///   'color': Style(
  ///     {
  ///       'primary': Property(Colors.red),
  ///       'secondary': Property(Colors.green),
  ///       'failure': Property(Colors.yellow),
  ///     }
  ///   )
  /// }
  final Map<String, Style> styles;

  const StyleSet(this.styles);

  factory StyleSet.fromMap(Map<String, Map<String, dynamic>> builder) {
    return StyleSet(
      builder.map(
        (styleSetKey, styles) => MapEntry(
          styleSetKey,
          Style(
            styles.map(
              (styleKey, properties) => MapEntry(
                styleKey,
                Property(properties),
              ),
            ),
          ),
        ),
      ),
    );
  }


  /// [get] a [dynamic] value from a property chosen by [query]
  ///
  /// Any queries are like [String] and they are written in the format
  ///
  /// 'style_name : property_name'
  ///
  dynamic get(String query) {
    
    query = query.replaceAll(' ', '');
    final args = query.split(':');
    final styleKey = args[0];
    final propertyKey = args[1];
    return styles[styleKey].get(propertyKey);
  }

  @override
  String toString() {
    return 'StyleGroup{styles: ${styles.toString()}}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StyleSet &&
          runtimeType == other.runtimeType &&
          styles == other.styles;

  @override
  int get hashCode => styles.hashCode;
}
