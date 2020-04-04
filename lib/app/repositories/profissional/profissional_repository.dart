import 'package:allclinics/app/modules/models/profissional_model.dart';
import 'package:allclinics/app/repositories/profissional/profissional_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfissionalRepository implements IProfissionalRepository {

  final Firestore firestore;

  ProfissionalRepository(this.firestore);

  @override
  Stream<List<ProfissionalModel>> getMostViewedProfessional() {
    return firestore
        .collection('professional')
        .orderBy('createdAt')
        .snapshots()
        .map((query) {
      return query.documents.map((doc) {
        return ProfissionalModel.fromDocument(doc);
      }).toList();
    });
  }
}
