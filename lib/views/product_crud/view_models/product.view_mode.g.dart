// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.view_mode.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Product on _ProductBase, Store {
  Computed<ProductModel> _$modelComputed;

  @override
  ProductModel get model => (_$modelComputed ??=
          Computed<ProductModel>(() => super.model, name: '_ProductBase.model'))
      .value;

  final _$idAtom = Atom(name: '_ProductBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$validadeAtom = Atom(name: '_ProductBase.validade');

  @override
  DateTime get validade {
    _$validadeAtom.reportRead();
    return super.validade;
  }

  @override
  set validade(DateTime value) {
    _$validadeAtom.reportWrite(value, super.validade, () {
      super.validade = value;
    });
  }

  final _$fabricacaoAtom = Atom(name: '_ProductBase.fabricacao');

  @override
  DateTime get fabricacao {
    _$fabricacaoAtom.reportRead();
    return super.fabricacao;
  }

  @override
  set fabricacao(DateTime value) {
    _$fabricacaoAtom.reportWrite(value, super.fabricacao, () {
      super.fabricacao = value;
    });
  }

  final _$precoAtom = Atom(name: '_ProductBase.preco');

  @override
  double get preco {
    _$precoAtom.reportRead();
    return super.preco;
  }

  @override
  set preco(double value) {
    _$precoAtom.reportWrite(value, super.preco, () {
      super.preco = value;
    });
  }

  final _$_ProductBaseActionController = ActionController(name: '_ProductBase');

  @override
  dynamic setid(String value) {
    final _$actionInfo =
        _$_ProductBaseActionController.startAction(name: '_ProductBase.setid');
    try {
      return super.setid(value);
    } finally {
      _$_ProductBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setvalidade(DateTime value) {
    final _$actionInfo = _$_ProductBaseActionController.startAction(
        name: '_ProductBase.setvalidade');
    try {
      return super.setvalidade(value);
    } finally {
      _$_ProductBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setfabricacao(DateTime value) {
    final _$actionInfo = _$_ProductBaseActionController.startAction(
        name: '_ProductBase.setfabricacao');
    try {
      return super.setfabricacao(value);
    } finally {
      _$_ProductBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setpreco(double value) {
    final _$actionInfo = _$_ProductBaseActionController.startAction(
        name: '_ProductBase.setpreco');
    try {
      return super.setpreco(value);
    } finally {
      _$_ProductBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
validade: ${validade},
fabricacao: ${fabricacao},
preco: ${preco},
model: ${model}
    ''';
  }
}
