import 'package:comies_structures/src/costumer.dart';
import 'package:comies_structures/src/structure.dart';

class Phone extends Structure<Phone> {
  int id;
  String ddd;
  String number;
  int costumerId;
  Costumer costumer;

  @override
  Phone fromMap(Map<String, dynamic> phone){
    id = phone['id'];
    ddd = phone['ddd'].toString();
    number = phone['number'].toString();
    costumerId = phone['costumerId'];
    return this;
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'ddd': ddd,
      'costumerId': costumerId,
      'number': number
    };
  }
}
