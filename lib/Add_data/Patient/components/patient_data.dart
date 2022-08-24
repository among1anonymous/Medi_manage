import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PatiData extends StatefulWidget {
  const PatiData({Key? key}) : super(key: key);

  @override
  State<PatiData> createState() => PatiDataState();
}

class PatiDataState extends State<PatiData> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: const NeumorphicStyle(
          depth: -8,
//        color: Colors.white,
          shape: NeumorphicShape.flat,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Neumorphic(
                  style: NeumorphicStyle(
                    depth: 3,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
//              color: Colors.white,
//                shape: NeumorphicShape.concave,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              Neumorphic(
                  style: NeumorphicStyle(
                    depth: 3,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
//              color: Colors.white,
//                shape: NeumorphicShape.concave,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              Neumorphic(
                  style: NeumorphicStyle(
                    depth: 3,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
//              color: Colors.white,
//                shape: NeumorphicShape.concave,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Sex',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              Neumorphic(
                  style: NeumorphicStyle(
                    depth: 3,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
//              color: Colors.white,
//                shape: NeumorphicShape.concave,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Weight',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              Neumorphic(
                  style: NeumorphicStyle(
                    depth: 3,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
//              color: Colors.white,
//                shape: NeumorphicShape.concave,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              Neumorphic(
                  style: NeumorphicStyle(
                    depth: 3,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
//              color: Colors.white,
//                shape: NeumorphicShape.concave,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Cheif Complaints',
                      labelStyle: TextStyle(color: Colors.black54),
                    ),
                  )),
            ],
          ),
        ));
  }
}
