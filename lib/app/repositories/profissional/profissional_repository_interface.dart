import 'package:allclinics/app/modules/models/profissional_model.dart';

abstract class IProfissionalRepository {

  Stream<List<ProfissionalModel>> getMostViewedProfessional();
  
}