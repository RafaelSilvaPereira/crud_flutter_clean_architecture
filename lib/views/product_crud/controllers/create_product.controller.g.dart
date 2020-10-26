// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateProductController on _CreateProductControllerBase, Store {
  Computed<bool> _$activeButtonComputed;

  @override
  bool get activeButton =>
      (_$activeButtonComputed ??= Computed<bool>(() => super.activeButton,
              name: '_CreateProductControllerBase.activeButton'))
          .value;

  final _$createButtonOnClickAsyncAction =
      AsyncAction('_CreateProductControllerBase.createButtonOnClick');

  @override
  Future createButtonOnClick(BuildContext context) {
    return _$createButtonOnClickAsyncAction
        .run(() => super.createButtonOnClick(context));
  }

  @override
  String toString() {
    return '''
activeButton: ${activeButton}
    ''';
  }
}
