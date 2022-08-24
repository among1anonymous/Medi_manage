import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:arogyam/constants.dart';
import 'package:arogyam/Add_data/Patient/patient_data.dart';
import 'package:arogyam/Add_data/Meds/meds_data.dart';

class Informatics extends StatelessWidget {
  const Informatics({super.key});

  @override
  Widget build(BuildContext context) {
    var bdWidth = 100.0;

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        height: 400.0,
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Neumorphic(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 20.0),
                  style: CellDecors().neumoStyle(greenLight),
                  child: Row(children: [
                    NeumorphicIcon(
                      Icons.people_alt_rounded,
                      size: 40,
                      style: const NeumorphicStyle(
                        color: greenDark,
                      ),
                    ),
                    const SizedBox(width: 6),
                    CellDecors().textBois('Total Patients: 400'),
                  ])),
              SizedBox(height: (bdWidth / 8)),
              NeumorphicButton(
                onPressed: () {
                  debugPrint('Add Patient');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewPatient()),
                  );
                },
                style: const NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  color: red,
                  boxShape: NeumorphicBoxShape.stadium(),
                ),
                padding: const EdgeInsets.all(12.0),
                child: Row(children: const [
                  Icon(
                    Icons.person_add_alt_rounded,
//                color: ,
                  ),
                  SizedBox(width: 6),
                  Text("Add Patient",
                      style: TextStyle(
                          //color: blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w200)),
                ]),
              ),
              SizedBox(height: (bdWidth / 6)),
              NeumorphicButton(
                onPressed: () {
                  debugPrint('Add Meds');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewMedications()),
                  );
                },
                style: const NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  color: blue,
                  boxShape: NeumorphicBoxShape.stadium(),
                ),
                padding: const EdgeInsets.all(12.0),
                child: Row(children: const [
                  Icon(
                    Icons.monitor_heart_rounded,
//                color: ,
                  ),
                  SizedBox(width: 6),
                  Text("Add New Meds",
                      style: TextStyle(
                          //color: blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w200)),
                ]),
              ),
              SizedBox(height: (bdWidth / 6)),
              Neumorphic(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 20.0),
                  style: CellDecors().neumoStyle(greenLight),
                  child: Row(children: [
                    NeumorphicIcon(
                      Icons.account_circle,
                      size: 40,
                      style: const NeumorphicStyle(
                        color: greenDark,
                      ),
                    ),
                    const SizedBox(width: 6),
                    CellDecors().textBois('Latest Patient: Abacus'),
                  ])),
              SizedBox(height: (bdWidth / 8)),
            ],
          ),
        ));
  }
}

class CellDecors {
  neumoStyle(culurs) {
    return NeumorphicStyle(
//        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: -3,
        lightSource: LightSource.topLeft,
        color: culurs);
  }

  textBois(String txt) {
    return Center(
        child: Text(
      txt,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
    ));
  }
}
