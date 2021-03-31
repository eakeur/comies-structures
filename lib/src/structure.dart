import 'dart:convert';

abstract class Structure<T>{

  T fromMap(Map<String, dynamic> map);
  T fromJSON(String json){
    return fromMap(jsonDecode(json));
  }
  Map<String, dynamic> toMap();

  String get json => jsonEncode(toMap());


}