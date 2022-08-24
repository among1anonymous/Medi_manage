import 'package:arogyam/Add_data/Patient/components/pamed_pick.dart';
import 'package:arogyam/Add_data/Patient/components/patient_data.dart';
import 'package:arogyam/Add_data/Patient/components/patient_probs.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:arogyam/constants.dart';

class NewPatient extends StatefulWidget {
  const NewPatient({Key? key}) : super(key: key);

  @override
  State<NewPatient> createState() => _NewPatientState();
}

class _NewPatientState extends State<NewPatient> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
        title: 'Arogyam Panchkarma',
        home: Scaffold(
            appBar: NeumorphicAppBar(
              title: const Text("Add Patient"),
              leading: NeumorphicButton(
                style: const NeumorphicStyle(
                  depth: 3,
                  color: red,
                  boxShape: NeumorphicBoxShape.stadium(),
                ),
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: PatiData()),
                    const SizedBox(width: 20),
                    const Expanded(child: PatiProblems()),
                  ],
                ),
                const SizedBox(height: 20),
                const Expanded(child: MedsPick())
              ],
            )));
  }
}
