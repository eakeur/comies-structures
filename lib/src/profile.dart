import 'package:comies_structures/comies_structures.dart';

/// A group of settings that will allow or disallow operators to do things
class Profile {
  ///The profile id
  int id;
  int partnerId;

  ///The name of the profile setting
  String name;

  bool canAddOrders;

  bool canAddProducts;

  bool canAddCostumers;

  bool canAddStores;

  bool canUpdateOrders;

  bool canUpdateProducts;

  bool canUpdateCostumers;

  bool canUpdateStores;

  bool canGetOrders;

  bool canGetProducts;

  bool canGetCostumers;

  bool canGetStores;

  bool canRemoveOrders;

  bool canRemoveProducts;

  bool canRemoveCostumers;

  bool canRemoveStores;

  Partner partner;

  List<Operator> operators;

  Profile.fromMap(Map<String, dynamic> map){
    name = map['name'];
    canAddProducts = map['canAddProducts'] == 1;
    canGetProducts = map['canGetProducts'] == 1;
    canUpdateProducts = map['canUpdateProducts'] == 1;
    canRemoveProducts = map['canRemoveProducts'] == 1;
    canAddCostumers = map['canAddCostumers'] == 1;
    canGetCostumers = map['canGetCostumers'] == 1;
    canUpdateCostumers = map['canUpdateCostumers'] == 1;
    canRemoveCostumers = map['canRemoveCostumers'] == 1;
    canAddOrders = map['canAddOrders'] == 1;
    canGetOrders= map['canGetOrders'] == 1;
    canUpdateOrders = map['canUpdateOrders'] == 1;
    canRemoveOrders = map['canRemoveOrders'] == 1;
    canAddStores = map['canAddStores'] == 1;
    canGetStores = map['canGetStores'] == 1;
    canUpdateStores = map['canUpdateStores'] == 1;
    canRemoveStores = map['canRemoveStores'] == 1;
  }

  @override 
  Map<String, dynamic> toMap(){
    return {
      'canAddProducts': canAddProducts ? 1 : 0 ,
      'canGetProducts': canGetProducts ? 1 : 0 ,
      'canUpdateProducts': canUpdateProducts ? 1 : 0 ,
      'canRemoveProducts': canRemoveProducts ? 1 : 0 ,
      'canAddCostumers': canAddCostumers ? 1 : 0 ,
      'canGetCostumers': canGetCostumers ? 1 : 0 ,
      'canUpdateCostumers': canUpdateCostumers ? 1 : 0 ,
      'canRemoveCostumers': canRemoveCostumers ? 1 : 0 ,
      'canAddOrders': canAddOrders ? 1 : 0 ,
      'canGetOrders': canGetOrders ? 1 : 0 ,
      'canUpdateOrders': canUpdateOrders ? 1 : 0 ,
      'canRemoveOrders': canRemoveOrders ? 1 : 0 ,
      'canAddStores': canAddStores ? 1 : 0 ,
      'canGetStores': canGetStores ? 1 : 0 ,
      'canUpdateStores': canUpdateStores ? 1 : 0 ,
      'canRemoveStores': canRemoveStores ? 1 : 0 
    };
  }
  

}
