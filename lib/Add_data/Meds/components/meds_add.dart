import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:arogyam/constants.dart';
import 'package:arogyam/Big_Data/medications.dart';

class AddNewMeds extends StatefulWidget {
  const AddNewMeds({Key? key}) : super(key: key);

  @override
  State<AddNewMeds> createState() => _AddNewMedsState();
}

class _AddNewMedsState extends State<AddNewMeds> {
  var medName = MedicationData.medName;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        width: 300.0,
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  depth: -3,
                  //color: greenLight,
                ),
                child: TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'New Meds',
                    labelStyle: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              NeumorphicButton(
                style: const NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  color: pink,
                  boxShape: NeumorphicBoxShape.stadium(),
                ),
                onPressed: () {
                  debugPrint('Pressed');
                  setState(() {
                    if (controller.text.isNotEmpty) {
                      debugPrint(controller.text);
                      medName.add(controller.text);
                      controller.clear();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("No medication specified"),
                      ));
                    }
                  });
                },
                child: const Text('Add to List',
                    style: TextStyle(color: Colors.black87, fontSize: 16)),
              ),
            ],
          ),
        ));
  }
}

/*

*/
