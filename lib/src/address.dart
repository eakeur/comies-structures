import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/costumer.dart';

class Address {
  int id;
  String cep;
  String number;
  String district;
  String complement;
  String reference;
  String street;
  String city;
  String state;
  String country;
  Costumer costumer;
  List<Order> orders;
}
