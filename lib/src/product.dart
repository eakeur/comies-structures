import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/enum.dart';
import 'package:comies_structures/src/order.dart';
import 'package:comies_structures/src/structure.dart';

class Product extends Structure<Product> {
  int id;
  int partnerId;
  String name;
  String code;
  double min; 
  Unity unity;
  double price;
  bool active;
  
  Partner partner;
  List<Order> orders;


  @override
  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'parnerId': partnerId,
      'name': name,
      'code': code,
      'min': min,
      'active': active ? 1 : 0,
      'price': price,
      'unity': unity.index,
    };
  }

  @override
  Product fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    partnerId = map['partnerId'];
    code = map['code'];
    min = map['min'];
    active = map['active'] == 1;
    price = map['price'];
    unity = Unity.values[map['unity']];
    return this;
  }
  
}
