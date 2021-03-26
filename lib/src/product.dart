import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/enum.dart';
import 'package:comies_structures/src/order.dart';

class Product {
  int id;
  String name;
  String code;
  double min; 
  Unity unity;
  double price;
  int partnerId;
  bool active;
  
  Partner partner;
  List<Order> orders;
  
}
