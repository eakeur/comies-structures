import 'package:comies_structures/src/order.dart';
import 'package:comies_structures/src/product.dart';
import 'package:comies_structures/src/structure.dart';

class Item extends Structure<Item> {
  int id;
  int orderId;
  int productId;
  bool done;
  Order order;
  Product product;
  double quantity;
  double discount;
  int group;

  @override
  Item fromMap(Map<String, dynamic> map){
    id = map['id'];
    orderId = map['orderId'];
    productId = map['productId'];
    done = map['done'] == 1;
    quantity = map['quantity'];
    discount = map['discount'];
    group = map['group'];
    return this;
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'discount': discount,
      'group': group,
      'done': done ? 1 : 0,
      'orderId': orderId,
      'productId': productId,
      'quantity': quantity,
    };
  }

}
