import 'package:comies_structures/src/costumer.dart';

class Phone{
  int id;
  String ddd;
  String number;
  int costumerId;
  Costumer costumer;

  Phone.fromMap(Map<String, dynamic> phone){
    id = phone['id'];
    ddd = phone['ddd'].toString();
    number = phone['number'].toString();
    costumerId = phone['costumerId'];
  }

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'ddd': ddd,
      'costumerId': costumerId,
      'number': number
    };
  }
}
