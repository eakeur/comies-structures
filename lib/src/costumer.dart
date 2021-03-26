import 'package:comies_structures/src/address.dart';
import 'package:comies_structures/src/order.dart';
import 'package:comies_structures/src/phone.dart';

class Costumer {
  int id;
  String name;
  List<Phone> phones;
  List<Address> addresses;
  List<Order> orders;
  bool active;
}
