import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  const SharedPreferencesScreen({super.key});

  @override
  State<SharedPreferencesScreen> createState() =>
      _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  String data = '';

  final _dataController = TextEditingController();

  _setDataTosharedPref(String text) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString('my_key', text);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  _getDataFromSharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? value = prefs.getString('my_key');

    if (value != null) {
      setState(() {
        data = value;
      });
    } else {
      setState(() {
        data = 'No data found';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shared Preferences'),
        ),
        body: Container(
            child: Column(
          children: [
            TextFormField(
              controller: _dataController,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                _setDataTosharedPref(_dataController.text);
              },
              child: const Text('save'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                _getDataFromSharedPref();
              },
              child: const Text('show'),
            ),
            const SizedBox(height: 8),
            Text(data)
          ],
        )));
  }
}
