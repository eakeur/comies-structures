import 'package:comies_structures/comies_structures.dart';

class Address{
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

  Address.fromMap(Map<String, dynamic> addr){
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
