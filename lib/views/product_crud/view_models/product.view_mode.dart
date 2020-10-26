import '../../../modules/product_crud/index.dart';
import 'package:mobx/mobx.dart';
part 'product.view_mode.g.dart';

class Product = _ProductBase with _$Product;

abstract class _ProductBase with Store {
  @observable
  String id;
  @action
  setid(String value) => id = value;
  
  @observable
  DateTime validade;
  @action
  setvalidade(DateTime value) => validade = value;
  

  @observable
  DateTime fabricacao;
  @action
  setfabricacao(DateTime value) => fabricacao = value;
  

  @observable
  double preco;
  @action
  setpreco(double value) => preco = value;
  

  @computed
  ProductModel get model  => ProductModel(id: id, fabricacao: fabricacao, validade: validade, preco: preco);


  
}