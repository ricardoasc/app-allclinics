import 'package:cloud_firestore/cloud_firestore.dart';

class ProfissionalModel {
  String imageUrl;
  String name;
  String specialty;
  double rating;
  DocumentReference reference;

  ProfissionalModel(
      {this.imageUrl,
      this.name = '',
      this.specialty = '',
      this.rating,
      this.reference});

  factory ProfissionalModel.fromDocument(DocumentSnapshot doc) {
    return ProfissionalModel(
        name: doc['name'],
        specialty: doc['specialty'],
        reference: doc.reference);
  }
}