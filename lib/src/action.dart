import 'package:comies_structures/src/structure.dart';

class Action extends Structure {
  String name;
  String href;
  Action({this.name, this.href});

  @override
  Action fromMap(Map<String, dynamic> map){
    name = map['name'];
    href = map['href'];
    return this;
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'name': name, 'href': href
    };
  }
}
