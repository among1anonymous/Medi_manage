import 'package:arogyam/Big_Data/models/meds_model.dart';

class Medication {
  String medName;
  List medDose;

  Medication({
    required this.medName,
    required this.medDose,
  });
}

class MedicationData {
  static List<String> medDoses = ['OD', 'BD', 'Hs', 'TDS', 'EOD'];
  static List<String> medName = [
    'Adhya Tablet',
    'Awipatti Tablet',
    'Madhuparni Tablet',
    'Lekhniya Tablet',
    'Vrahkarni Tablet',
    'Rakta Shodak Tablet',
    'Medhya Rasayan Tablet',
    'Calvera Tablet',
    'Punarnava Capsule',
    'Maarkhav Capsule',
    'Cystolve Tablet',
    'Cystolve Capsule',
  ];
//  static List<String> medName = [
//    'Adhya Tablet',
//    'Awipatti Tablet',
//    'Madhuparni Tablet',
//    'Lekhniya Tablet',
//    'Vrahkarni Tablet',
//    'Rakta Shodak Tablet',
//    'Medhya Rasayan Tablet',
//    'Calvera Tablet',
//    'Punarnava Capsule',
//    'Maarkhav Capsule',
//    'Cystolve Tablet',
//    'Cystolve Capsule',
//  ];
}

//List<Medication> medicating = [
//  Medication(
//    medName: medName,
//    medDose: doses,
//  ),
//  Medication(
//    medName: 'Venice',
//    medDose: doses,
//  ),
//];
