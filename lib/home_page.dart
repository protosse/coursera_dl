import 'package:coursera_dl/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<String> selectedLanguages = {};

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FMultiSelect<String>.rich(
        control: .lifted(
          value: selectedLanguages,
          onChange: (values) {
            setState(() {
              if (values.contains('all')) {
                selectedLanguages = {'all'};
              } else {
                selectedLanguages = values.toSet();
              }
            });
          },
        ),
        hint: const Text('Select languages'),
        format: Text.new,
        clearable: true,
        children: [
          for (final entry in supportLanguages.entries)
            FSelectItem(title: Text(entry.key), value: entry.key),
        ],
      ),
    );
  }
}
