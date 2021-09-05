import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum Category {
  all,
  accessories,
  clothing,
  home,
}

class Product {
//  const Product({
//    @required this.category,
//    @required this.id,
//    @required this.isFeatured,
//    @required this.name,
//    @required this.price,
//  })  : assert(category != null),
//        assert(id != null),
//        assert(isFeatured != null),
//        assert(name != null),
//        assert(price != null);
//
//  final Category category;
//  final int id;
//  final bool isFeatured;
//  final String name;
//  final int price;

  Product.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['category'] != null),
        assert(map['id'] != null),
        assert(map['isFeatured'] != null),
        assert(map['name'] != null),
        assert(map['price'] != null),
        category = map['category'],
        id = map['id'],
        isFeatured = map['isFeatured'],
        name = map['name'],
        price = map['price'];

  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;
  final DocumentReference reference;

  Product.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => '$name (id=$id)';
}
//class Record {
//
//
//  Record.fromMap(Map<String, dynamic> map, {this.reference})
//      : assert(map['category'] != null),
//        assert(map['id'] != null),
//        assert(map['isFeatured'] != null),
//        assert(map['name'] != null),
//        assert(map['price'] != null),
//        category = map['category'],
//        id = map['id'],
//        isFeatured = map['isFeatured'],
//        name = map['name'],
//        price = map['price'];
//
//  final Category category;
//  final int id;
//  final bool isFeatured;
//  final String name;
//  final int price;
//  final DocumentReference reference;
//
//  Record.fromSnapshot(DocumentSnapshot snapshot)
//      : this.fromMap(snapshot.data, reference: snapshot.reference);
//
//  @override
//  String toString() => "Record<$name:$votes>";
//}