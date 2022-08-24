import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'components/data_table.dart';
import 'components/pati_info.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        child: Row(
      children: [
        const Informatics(),
        const SizedBox(width: 20),
        Expanded(child: const PatientData()),
      ],
    ));
  }
}
