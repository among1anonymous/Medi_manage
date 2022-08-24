import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PatiProblems extends StatefulWidget {
  const PatiProblems({Key? key}) : super(key: key);
  @override
  createState() => PatiProblemsState1();
}

class PatiProblemsState1 extends State<PatiProblems> {
  int _indexSleep = 1;
  int _indexBowel = 1;
  int _indexAppetite = 1;
  int _indexDigestion = 1;
  int _indexStress = 1;
  int _indexMicturition = 1;
  int _indexTolerance = 1;
  int _indexMensturation = 1;

  double buildHeight = 35;

  Widget buildSleep(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexSleep,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexSleep");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexSleep = value;
            debugPrint("_firstSelected: $_indexSleep");
          });
        },
      ))
    ]);
  }

  Widget buildBowel(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexBowel,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexBowel");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexBowel = value;
            debugPrint("_firstSelected: $_indexBowel");
          });
        },
      ))
    ]);
  }

  Widget buildAppetite(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexAppetite,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexAppetite");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexAppetite = value;
            debugPrint("_firstSelected: $_indexAppetite");
          });
        },
      ))
    ]);
  }

  Widget buildDigestion(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexDigestion,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexDigestion");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexDigestion = value;
            debugPrint("_firstSelected: $_indexDigestion");
          });
        },
      ))
    ]);
  }

  Widget buildStress(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexStress,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexStress");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexStress = value;
            debugPrint("_firstSelected: $_indexStress");
          });
        },
      ))
    ]);
  }

  Widget buildMicturition(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexMicturition,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexMicturition");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexMicturition = value;
            debugPrint("_firstSelected: $_indexMicturition");
          });
        },
      ))
    ]);
  }

  Widget buildTolerance(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexTolerance,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexTolerance");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexTolerance = value;
            debugPrint("_firstSelected: $_indexTolerance");
          });
        },
      ))
    ]);
  }

  Widget buildMensturation(problm, a, b, c) {
    return Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      const SizedBox(width: 8),
      Text(
        problm,
        style: TextStyle(
            fontSize: 18, color: NeumorphicTheme.defaultTextColor(context)),
      ),
      Expanded(
          child: NeumorphicToggle(
        height: buildHeight,
        selectedIndex: _indexMensturation,
        displayForegroundOnlyIfSelected: true,
        children: [
          ToggleElement(
            background: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              a,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              b,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          ),
          ToggleElement(
            background: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w500),
            )),
            foreground: Center(
                child: Text(
              c,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
          )
        ],
        thumb: Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        ),
        onAnimationChangedFinished: (value) {
          if (value == 0) {
            debugPrint("onAnimationChangedFinished: $_indexMensturation");
          }
        },
        onChanged: (value) {
          setState(() {
            _indexMensturation = value;
            debugPrint("_firstSelected: $_indexMensturation");
          });
        },
      ))
    ]);
  }

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
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(children: [
                  buildSleep("Sleep: ", "Normal", "Disrupted", "Heavy"),
                  buildBowel("Bowel: ", "Normal", "Constipation", "Frequent"),
                  buildAppetite("Appetite: ", "Normal", "Disrupted", "Heavy"),
                  buildDigestion("Digestion: ", "Normal", "Poor", "Heavy"),
                  buildStress("Stress: ", "Normal", "Heavy", "Poor"),
                  buildMicturition(
                      "Micturition: ", "Normal", "Frequent", "low"),
                  buildTolerance("Tolerance: ", "Normal", "Cold", "Hot"),
                  buildMensturation(
                      "Mensturation: ", "Normal", "Scanty", "Heavy"),
                ])
// LMP
              ]),
        ));
  }
}
