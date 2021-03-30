import 'package:comies_structures/src/partner.dart';
import 'package:comies_structures/src/structure.dart';

class Configuration extends Structure {
  int id;
  int partnerId;
  Partner partner;
  String key;
  dynamic value;
  bool active;

  @override
  Configuration fromMap(Map<String, dynamic> map){
    id = map['id'];
    partnerId = map['partnerId'];
    key = map['key'];
    value = map['value'];
    active = map['active'] == 1;
    return this;
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'partnerId': partnerId,
      'key': key,
      'value': value,
      'active': active ? 1 : 0
    };
  }
}
