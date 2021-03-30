import 'package:comies_structures/src/notification.dart';
import 'package:comies_structures/src/structure.dart';

class Response<T> extends Structure<Response<T>> {
  String message;
  bool success;
  String access;
  T data;
  Notification notification;

  Response({this.message, this.success, this.access, this.data, this.notification}){
    if (notification == null){
      success ? notification = Notification(message: 'Sucesso!') : Notification(message: 'Opa! Um erro ocorreu. Contate um responsável pelo app.');
    }
  }



  @override
  Response<T> fromMap(Map<String, dynamic> map){
    message = map['message'];
    success = map['success'] == 1;
    access = map['access'];
    data = map['data'];
    notification = Notification().fromMap(map['notification']);
    return this;
  }

  @override
  Map<String, dynamic> toMap(){
    return {
      'message': message,
      'success': success ? 1 : 0,
      'access':  access,
      'data': data,
      'notification': notification.toMap()
    };
  }
}
