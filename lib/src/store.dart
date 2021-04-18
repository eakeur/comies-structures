import 'package:comies_structures/comies_structures.dart';

class Store{
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

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'partnerId': partnerId
    };
  }

  Store.fromMap(Map<String, dynamic> map){
    id = map['id'];
    name = map['name'];
    partnerId = map['partnerId'];
  }
}
