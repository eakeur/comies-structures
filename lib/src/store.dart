import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/structure.dart';

class Store extends Structure<Store> {
  ///The store id
  int id;

  /// The name of the store
  String name;

  int partnerId;

  /// The partner that this store is under
  Partner partner;

  /// Orders that this store has
  List<Order> orders;

  /// The operators that has access to this store
  List<Operator> operators;

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'partnerId': partnerId
    };
  }

  @override
  Store fromMap(Map<String, dynamic> map){
    id = map['id'];
    name = map['name'];
    partnerId = map['partnerId'];
    return this;
  }
}
