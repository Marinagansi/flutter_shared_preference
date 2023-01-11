import 'package:flutter/material.dart';
import 'package:shared_preference/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(MaterialApp(home: SharedPreferencesScreen()));
}



    
// class sharedPreference extends StatefulWidget {
//   const sharedPreference({super.key});

//   @override
//   State<sharedPreference> createState() => _sharedPreferenceState();

// }

// class _sharedPreferenceState extends State<sharedPreference> {
//   _setDataToSharedPref(String text)async{
//   try{
//     final SharedPreference prefs=await SharedPreference.getInstance(;);
//     await pref.setString('key', text);
//   }catch(e){
//     debugprint(e.toString());
//   }

// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('shared prefenrce'),
//         ),
//         body: Container(
//             child: Column(
//           children: [
//             const TextField(),
//             ElevatedButton(
//               child: const Text('save button'),
//               onPressed: () {},
//             ),
//             ElevatedButton(
//               child: const Text('save button'),
//               onPressed: () {},
//             ),
//           ],
//         ),),);
//   }
// }
