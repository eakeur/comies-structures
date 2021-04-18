class Action {
  String name;
  String href;
  Action({this.name, this.href});

  Action.fromMap(Map<String, dynamic> map){
    name = map['name'];
    href = map['href'];
  }

  Map<String, dynamic> toMap(){
    return {
      'name': name, 'href': href
    };
  }
}
