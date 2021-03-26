import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/costumer.dart';
import 'package:comies_structures/src/enum.dart';
import 'package:comies_structures/src/item.dart';
import 'package:comies_structures/src/store.dart';

import 'operator.dart';

class Order {
  int id;
  DateTime placed;
  Status status;
  DeliverType deliverType;
  PaymentMethod payment;
  Store store;
  Costumer costumer;
  Operator operator;
  List<Item> items;
  Address address;
  double price;
  bool active;
}
