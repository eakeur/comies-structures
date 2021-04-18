import 'package:comies_structures/src/address.dart';
import 'package:comies_structures/src/order.dart';
import 'package:comies_structures/src/phone.dart';

class Costumer{
  int id;
  String name;
  List<Phone> phones;
  List<Address> addresses;
  List<Order> orders;
  bool active;

  Costumer.fromMap(Map<String, dynamic> map){
    id = map['id'];
    name = map['name'];
    active = map['active'] == 1;
  }

  Map<String, dynamic> toMap(){
    return {
      'id': id, 'name': name, 'active': active ? 1 : 0
    };
  }
}
