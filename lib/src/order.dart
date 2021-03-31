import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/costumer.dart';
import 'package:comies_structures/src/enum.dart';
import 'package:comies_structures/src/item.dart';
import 'package:comies_structures/src/store.dart';
import 'package:comies_structures/src/structure.dart';

import 'operator.dart';

class Order extends Structure<Order> {
  int id;
  int addressId;
  int operatorId;
  int costumerId;
  int storeId;
  DateTime placed;
  Status status;
  DeliverType deliverType;
  PaymentMethod payment;
  String observations;

  Store store;
  Costumer costumer;
  Operator operator;
  List<Item> items;
  Address address;

  double price;
  bool active;

  @override
  Map<String, dynamic> toMap(){
    return {
        'id': id,
        'active': active ? 1 : 0,
        'observations': observations,
        'addressId': addressId,
        'operatorId': operatorId,
        'storeId': storeId,
        'costumerId': costumerId,
        'deliverType': deliverType.index,
        'payment': payment.index,
        'placed': placed != null ? placed.toIso8601String() : placed,
        'price': price,
        'status': status.index,
      };
  }

  @override
  Order fromMap(Map<String, dynamic> map){

    id = map['id'];
    active = map['active'] == 1;
    observations = map['observations'];
    addressId = map['addressId'];
    costumerId = map['costumerId'];
    deliverType = DeliverType.values[map['deliverType']];
    operatorId = map['operatorId'];
    payment = PaymentMethod.values[map['payment']];
    placed = (map['placed'] is DateTime) ? map['placed'] : map['placed'] != null ? DateTime.parse(map['placed']) : null;
    price =  map['price'];
    status = Status.values[map['status']];
    store = map['storeId'];
    return this;

  } 
}
