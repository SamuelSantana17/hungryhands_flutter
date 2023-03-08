import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:hands/pandMenu.dart';
import 'package:hands/update_record.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class pandaMenuModel {
  final String name;
  final String description;
  final double price;

  pandaMenuModel({required this.name, required this.description, required this.price});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
    };
  }
}
class FetchMenuPanda extends StatefulWidget {
  const FetchMenuPanda({Key? key}) : super(key: key);

  @override
  State<FetchMenuPanda> createState() => _FetchDataState();

}

class _FetchDataState extends State<FetchMenuPanda> {

  Future<void> addFoodMenuItem(pandaMenuModel item) async {
    await FirebaseFirestore.instance.collection('panda').add(item.toMap());
  }
  Stream<List<pandaMenuModel>> getFoodMenuItems() {
    return FirebaseFirestore.instance.collection('panda').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => pandaMenuModel(
        name: doc['name'],
        description: doc['description'],
        price: doc['price'],
      )).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

