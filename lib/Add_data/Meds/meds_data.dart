import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:arogyam/constants.dart';
import 'package:arogyam/Big_Data/medications.dart';
// import 'package:arogyam/Add_data/Meds/components/meds_add.dart';
// import 'package:arogyam/Add_data/Meds/components/meds_name.dart';

class NewMedications extends StatefulWidget {
  const NewMedications({Key? key}) : super(key: key);

  @override
  State<NewMedications> createState() => _NewMedicationsState();
}

class _NewMedicationsState extends State<NewMedications> {
  var medName = MedicationData.medName;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
        title: 'Arogyam Panchkarma',
        home: Scaffold(
          appBar: NeumorphicAppBar(
            title: const Text("Add Medications"),
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
          body: Neumorphic(
            child: Material(
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      width: 300.0,
                      alignment: Alignment.center,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Neumorphic(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(8)),
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
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("No medication specified"),
                                    ));
                                  }
                                });
                              },
                              child: const Text('Add to List',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 16)),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Neumorphic(
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
                                      style: const NeumorphicStyle(
                                          color: red, depth: 2),
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
                        )),
                  ),
//        const SizedBox(height: 20),
//        Container(width: 700, height: 800, child: NewMedications()),
                ],
              ),
            ),
          ),
        ));
  }
}


// https://flutterbyexample.com/lesson/adding-elements-add-and-insert-all
// Using list.insert(index, element) to insert an element at a specific index.
