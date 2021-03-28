import 'package:comies_structures/src/address.dart';
import 'package:comies_structures/src/order.dart';
import 'package:comies_structures/src/phone.dart';
import 'package:comies_structures/src/structure.dart';

class Costumer extends Structure {
  int id;
  String name;
  List<Phone> phones;
  List<Address> addresses;
  List<Order> orders;
  bool active;

  @override
  Costumer fromMap(Map<String, dynamic> map){
    id = map['id'];
    name = map['name'];
    active = map['active'] == 1;
    return this;
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'id': id, 'name': name, 'active': active
    };
  }
}
