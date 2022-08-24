import 'package:multiselect/multiselect.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:arogyam/constants.dart';
import 'package:arogyam/Big_Data/medications.dart';

class MedsPick extends StatefulWidget {
  const MedsPick({Key? key}) : super(key: key);

  @override
  MedsPickState createState() => MedsPickState();
}

class MedsPickState extends State<MedsPick> {
  List<String> selectedMeds = [];
  var medName = MedicationData.medName;
  var medDoses = MedicationData.medDoses;
  String medDosage = '';

  conditions(condition, gVal, val1, val2, val3, val4, val5) {
    return NeumorphicTheme(
//        themeMode: ThemeMode.light,
        theme: const NeumorphicThemeData(
          lightSource: LightSource.topLeft,
          accentColor: NeumorphicColors.accent,
          depth: 4,
          intensity: 0.5,
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Row(
            children: <Widget>[
              Text(
                condition,
                style:
                    TextStyle(color: NeumorphicTheme.defaultTextColor(context)),
              ),
              const SizedBox(width: 1),
              NeumorphicRadio(
                style: const NeumorphicRadioStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                groupValue: gVal,
                value: val1,
                onChanged: (value) {
                  setState(() {
                    gVal = value as String;
                  });
                },
                padding: const EdgeInsets.all(14.0),
                child: Text(val1),
              ),
              const SizedBox(width: 1),
              NeumorphicRadio(
                value: val2,
                style: const NeumorphicRadioStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                groupValue: gVal,
                onChanged: (value) {
                  setState(() {
                    gVal = value as String;
                  });
                },
                padding: const EdgeInsets.all(14.0),
                child: Text(val2),
              ),
              const SizedBox(width: 1),
              NeumorphicRadio(
                style: const NeumorphicRadioStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                groupValue: gVal,
                value: val3,
                onChanged: (value) {
                  setState(() {
                    gVal = value as String;
                  });
                },
                padding: const EdgeInsets.all(14.0),
                child: Text(val3),
              ),
              const SizedBox(width: 1),
              NeumorphicRadio(
                style: const NeumorphicRadioStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                groupValue: gVal,
                value: val4,
                onChanged: (value) {
                  setState(() {
                    gVal = value as String;
                  });
                },
                padding: const EdgeInsets.all(14.0),
                child: Text(val4),
              ),
              const SizedBox(width: 1),
              NeumorphicRadio(
                style: const NeumorphicRadioStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                groupValue: gVal,
                value: val5,
                onChanged: (value) {
                  setState(() {
                    gVal = value as String;
                  });
                },
                padding: const EdgeInsets.all(14.0),
                child: Text(val5),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        // DropDownMultiSelect comes from multiselect
        child: Neumorphic(
            style: const NeumorphicStyle(
              shape: NeumorphicShape.flat,
              depth: -8,
//              intensity: 0.5,
            ),
            child: Column(children: [
              DropDownMultiSelect(
                onChanged: (List<String> x) {
                  setState(() {
                    selectedMeds = x;
                  });
                },
                options: medName,
                selectedValues: selectedMeds,
                whenEmpty: 'Select Something',
              ),
              const SizedBox(height: 8),
              Text(selectedMeds.toString()),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Neumorphic(
                          style: const NeumorphicStyle(
                            //shape: NeumorphicShape.flat,
                            depth: 3,
//          lightSource: LightSource.topRight,
//                              color: Colors.grey.shade100
                          ),
                          child: Material(
                              child: Card(
                            child: ListView.builder(
                              itemCount: selectedMeds.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                    title: Text(selectedMeds[index]),
                                    trailing: SizedBox(
                                      width: 400,
                                      //height: 500,
                                      child: conditions(
                                          "Dose: ",
                                          medDosage,
                                          medDoses[0],
                                          medDoses[1],
                                          medDoses[2],
                                          medDoses[3],
                                          medDoses[4]),
                                    ));
                              },
                            ),
                          ))))),
            ])),
      ),
    ));
  }
}
