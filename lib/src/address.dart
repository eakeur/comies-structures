import 'package:comies_structures/comies_structures.dart';
import 'package:comies_structures/src/costumer.dart';
import 'package:comies_structures/src/structure.dart';

class Address extends Structure<Address> {
  int id;
  int costumerId;
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

  @override
  void fromMap(Map<String, dynamic> addr){
    id = addr['id'];
    costumerId = addr['costumerId'];
    cep = addr['cep'];
    street = addr['street'];
    number = addr['number'];
    district = addr['district'];
    complement = addr['complement'];
    reference = addr['reference'];
    city = addr['city'];
    state = addr['state'];
    country = addr['country'];
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'cep': cep,
      'street': street,
      'complement': complement,
      'reference': reference,
      'district': district,
      'number': number,
      'city': city,
      'state': state,
      'costumerId': costumerId,
      'country': country
    };
  }
}
