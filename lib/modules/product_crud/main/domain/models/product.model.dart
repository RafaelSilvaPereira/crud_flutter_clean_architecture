import 'package:meta/meta.dart';

import '../entities/product.entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    @required String id,
    @required DateTime fabricacao,
    @required DateTime validade,
    @required double preco,
  }) : super(id: id, validade: validade, fabricacao: fabricacao, preco: preco);

  double get calcularDesconto {
    double desconto = 0;

    final diferencaEntreDatas = validade.difference(DateTime.now());
    final periodoDeDesconto = getPeriodoDeDesconto();
    if (diferencaEntreDatas.inMilliseconds > periodoDeDesconto) {
      desconto = 0;
    } else {
      desconto = 0.15;
    }

    return desconto;
  }

  double get calcularValorProdutoComDeconto {
    return preco * calcularDesconto;
  }

  int getPeriodoDeDesconto() {
    return 50 *
        24 *
        60 *
        60 *
        100 *
        1000; // Nota: uma boa estrategia seria recuperar o periodo de desconto do banco de dados
  }

  get toMap => {
        'id': id,
        'fabricacao': fabricacao.toIso8601String(),
        'validade': validade.toIso8601String(),
        'preco': preco
      };

  factory ProductModel.fromMap(Map<String, dynamic> builder) {
    return ProductModel(
      id: builder['id'],
      preco: builder['preco'],
      validade: builder['validade'],
      fabricacao: builder['fabricacao'],
    );
  }
}
