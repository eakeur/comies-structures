import 'package:comies_structures/src/action.dart';
import 'package:comies_structures/src/structure.dart';

class Notification extends Structure {
  String message;
  Action action;

  Notification({this.message, Map<dynamic, dynamic> action}) {
    if (action != null) {
      this.action = Action(name: action['name'], href: action['href']);
    }
  }

  @override
  Notification fromMap(Map<String, dynamic> map){
    message = map['message'];
    action = Action().fromMap(map['action']);
    return this;
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'message': message,
      'action': action.toMap()
    };
  }
}
