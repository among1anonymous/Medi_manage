import 'package:easy_table/easy_table.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Person {
  Person(this.name, this.age, this.address, this.date, this.weight, this.sex);

  final String name;
  final int age;
  final String sex;
  final int weight;
  final String address;
  final String date;
}

class PatientData extends StatefulWidget {
  const PatientData({Key? key}) : super(key: key);

  @override
  State<PatientData> createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
  EasyTableModel<Person>? _model;

  @override
  void initState() {
    super.initState();

    List<Person> rows = [
      Person('Landon', 19, 'Himachal', '25 July', 900, 'Male'),
      Person('Sari', 22, 'Himachal', '25 July', 900, 'Female'),
      Person('Julian', 37, 'Himachal', '25 July', 900, 'Male'),
      Person('Carey', 39, 'Himachal', '25 July', 900, 'Female'),
      Person('Cadu', 43, 'Himachal', '25 July', 900, 'Male'),
      Person('Delmar', 72, 'Himachal', '25 July', 900, 'Male')
    ];

    _model = EasyTableModel<Person>(rows: rows, columns: [
      EasyTableColumn(name: 'Name', stringValue: (row) => row.name),
      EasyTableColumn(name: 'Age', intValue: (row) => row.age),
      EasyTableColumn(name: 'Address', stringValue: (row) => row.address),
      EasyTableColumn(name: 'date', stringValue: (row) => row.date),
      EasyTableColumn(name: 'Weight', intValue: (row) => row.weight),
      EasyTableColumn(name: 'Sex', stringValue: (row) => row.sex)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      style: const NeumorphicStyle(
        //shape: NeumorphicShape.flat,
        depth: -2,
        lightSource: LightSource.topLeft,
        //color: Colors.grey
      ),
      child: EasyTableTheme(
        data: EasyTableThemeData(
          cell: CellThemeData(
            nullValueColor: ((rowIndex, hovered) => Colors.grey[300]),
          ),
        ),
        child: EasyTable<Person>(
          _model,
          multiSort: true,
          columnsFit: true,
//      visibleRowsCount: 3,
        ),
      ),
    );
  }
}
