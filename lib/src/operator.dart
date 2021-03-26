import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/order.dart';
import 'package:comies_structures/src/profile.dart';
import 'package:comies_structures/src/store.dart';

class Operator {
  int id;
  String name;
  String identification;
  String password;
  DateTime lastLogin;
  Profile profile;
  Store store;
  Partner partner;
  List<Order> orders;
  bool active;
}
