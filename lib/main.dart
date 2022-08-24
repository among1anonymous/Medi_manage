//import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:arogyam/Login/login_screen.dart';
import 'package:arogyam/Main/main_page.dart';
import 'package:arogyam/Add_data/Meds/meds_data.dart';
import 'package:arogyam/Add_data/Patient/patient_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      title: 'Arogyam Panchkarma',
//        home: Material(child: NewPatient()
      home: Material(child: MainPage()),
//      home: Material(child: NewMedications()),
//      home: Material(child: NewPatient()),

//      home: const Material(child: LoginScreen()),
    );
  }
}


//sideBarr(){
//  return SidebarX(
//            controller: SidebarXController(selectedIndex: 0),
//            items: const [
//              SidebarXItem(icon: Icons.home, label: 'Home'),
//              SidebarXItem(icon: Icons.search, label: 'Search'),
//            ],
//          );
//}