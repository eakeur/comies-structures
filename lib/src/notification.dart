import 'package:comies_structures/src/action.dart';

class Notification{
  String message;
  Action action;

  Notification({this.message, Map<dynamic, dynamic> action}) {
    if (action != null) {
      this.action = Action(name: action['name'], href: action['href']);
    }
  }

  Notification.fromMap(Map<String, dynamic> map){
    message = map['message'];
    action = Action.fromMap(map['action']);
  }

  Map<String, dynamic> toMap(){
    return {
      'message': message,
      'action': action.toMap()
    };
  }
}
