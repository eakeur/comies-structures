import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/order.dart';
import 'package:comies_structures/src/profile.dart';
import 'package:comies_structures/src/store.dart';

class Operator {
  int id;
  int profileId;
  int storeId;
  int partnerId;
  String name;
  String identification;
  String password;
  DateTime lastLogin;
  Profile profile;
  Store store;
  Partner partner;
  List<Order> orders;
  bool active;


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'identification': identification,
      'password': password,
      'lastLogin': lastLogin != null ? lastLogin.toIso8601String() : lastLogin,
      'active': active ? 1 : 0,
      'partnerId': partnerId,
      'storeId': storeId,
      'profileId': profileId 
    };
  }

  Operator.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    identification = map['identification'];
    password = map['password'];
    lastLogin = (map['lastLogin'] is DateTime) ? map['lastLogin'] : map['lastLogin'] != null ? DateTime.parse(map['lastLogin']) : null;
    profileId = map['profileId'];
    partnerId = map['partnerId'];
    storeId = map['storeId'];
    active = map['active'] == 1;
  }
}
