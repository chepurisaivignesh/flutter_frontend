import 'package:blackcoffer_app/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/multi_select_chips.dart';

const List<String> list = <String>[
  'Available | Hey Let Us Connect',
  'Away | Stay Discreet And Watch',
  'Busy | Do Not Disturb | Will catch you later',
  'SOS | Emergency | Need Assistance Immediately'
];

class CustomChip {
  final int id;
  final String name;

  CustomChip({
    required this.id,
    required this.name,
  });
}

List<String> chipData = [
  "Coffee",
  "Business",
  "Hobbies",
  "Friendship",
  "Movies",
  "Dining",
  "Dating",
  "Matrimony",
];
List<String> selectedChips = [];

class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  String dropdownValue = list.first;
  TextEditingController _statusController = TextEditingController();
  double sliderValue = 0;
  @override
  void initState() {
    _statusController.text = "Hi community! I am open to new connections.";
    sliderValue = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyPalatte.dark,
        title: const Text(
          "Refine",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            const Text(
              "Select Your Availability",
              style: TextStyle(
                color: MyPalatte.dark,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: MyPalatte.dark,
                    ),
                    borderRadius: BorderRadius.circular(16)),
              ),
              borderRadius: BorderRadius.circular(24),
              // padding: EdgeInsets.all(16),
              icon: const Icon(Icons.arrow_drop_down_outlined),
              value: dropdownValue,
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            const Text(
              "Add Your Status",
              style: TextStyle(
                color: MyPalatte.dark,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              maxLines: 6,
              maxLength: 250,
              controller: _statusController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: MyPalatte.dark,
                    ),
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            const Text(
              "Select Hyper Local Distance (in Km)",
              style: TextStyle(
                color: MyPalatte.dark,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Slider(
                label: sliderValue.round().toString(),
                divisions: 100,
                min: 1,
                max: 100,
                activeColor: MyPalatte.dark,
                value: sliderValue,
                onChanged: (_currentValue) {
                  setState(() {
                    sliderValue = _currentValue;
                  });
                }),
            SizedBox(
              height: 16,
            ),
            const Text(
              "Select Purpose",
              style: TextStyle(
                color: MyPalatte.dark,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            MultiSelectChip(
              chipData,
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedChips = selectedList;
                });
              },
              maxSelection: 8,
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyPalatte.dark),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Save & Explore"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
