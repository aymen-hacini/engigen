import 'package:cloud_firestore/cloud_firestore.dart';

class Crud {
  // Add data (document) to the firestore database in the wanted collection
  addFirebasedoc(String collectionname, Map<String, dynamic> data) async {
    try {
      await FirebaseFirestore.instance.collection(collectionname).add(data);
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }

  // edit data (document) to the firestore database in the wanted collection

  editFirebasedoc(
      String collectionname, String? docid, Map<Object, Object> data) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionname)
          .doc(docid)
          .update(data);
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }

  // Delete data (document) to the firestore database in the wanted collection

  deleteFirebasedoc(String collectionname, String? docid) async {
    try {
      await FirebaseFirestore.instance
          .collection(collectionname)
          .doc(docid)
          .delete();
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }
}
