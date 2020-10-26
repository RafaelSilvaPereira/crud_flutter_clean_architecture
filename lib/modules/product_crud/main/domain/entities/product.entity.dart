
import 'package:meta/meta.dart';
abstract class ProductEntity {
  final String id;
  final DateTime fabricacao;
  final DateTime validade;
  final double preco;
  
  const ProductEntity({
    @required this.id,
    @required this.fabricacao,
    @required this.validade,
    @required this.preco,
  });


}        
