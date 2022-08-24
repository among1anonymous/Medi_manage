import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:arogyam/constants.dart';
import 'package:arogyam/Big_Data/medications.dart';

class MedNames extends StatefulWidget {
  const MedNames({Key? key}) : super(key: key);

  @override
  State<MedNames> createState() => _MedNamesState();
}

class _MedNamesState extends State<MedNames> {
  var medName = MedicationData.medName;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          //shape: NeumorphicShape.flat,
          depth: -4,
//          lightSource: LightSource.topRight,
          color: Colors.grey.shade100),
      child: Material(
          child: Card(
        child: ListView.builder(
          itemCount: medName.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(medName[index]),
              trailing: IconButton(
                icon: NeumorphicIcon(
                  Icons.delete,
                  style: const NeumorphicStyle(color: red, depth: 2),
                ),
                onPressed: () {
                  debugPrint(medName[index]);
                  setState(() {
                    medName.removeAt(index);
                  });
                  debugPrint('Done');
                },
              ),
            );
          },
        ),
      )),
    );
  }
}
