import 'package:comies_structures/src/configuration.dart';
import 'package:comies_structures/src/operator.dart';
import 'package:comies_structures/src/product.dart';
import 'package:comies_structures/src/profile.dart';
import 'package:comies_structures/src/store.dart';
import 'package:comies_structures/src/structure.dart';

class Partner extends Structure<Partner> {
  /// The partner's database ID
  int id;

  /// The name of the partner (may be the business name too)
  String name;

  /// The list of stores under this partner's domain
  List<Store> stores;

  /// The list of products this partner sells
  List<Product> products;

  /// The profile types under this partner's domain
  List<Profile> profiles;

  /// Properties set to this partner
  List<Configuration> configurations;

  /// The operators under this partner domain
  List<Operator> operators;

  /// Check if the partner is active in our registers
  bool active;


  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'active': active,
    };
  }

  @override
  Partner fromMap(Map<String, dynamic> map){
    id = map['id'];
    name = map['name'];
    active = map['active'] == 1;
    return this;
  }
}
