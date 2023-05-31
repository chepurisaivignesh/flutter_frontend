import 'package:blackcoffer_app/constants.dart';
import 'package:flutter/material.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> choiceList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  MultiSelectChip(this.choiceList,
      {this.onSelectionChanged, this.onMaxSelected, this.maxSelection});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.choiceList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.only(right: 8, bottom: 8),
        child: ChoiceChip(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: MyPalatte.dark),
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          selectedColor: MyPalatte.dark,
          labelStyle: TextStyle(
              color: selectedChoices.contains(item)
                  ? Colors.white
                  : MyPalatte.dark),
          label: Text(item),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            if (selectedChoices.length == (widget.maxSelection ?? -1) &&
                !selectedChoices.contains(item)) {
              widget.onMaxSelected?.call(selectedChoices);
            } else {
              setState(() {
                selectedChoices.contains(item)
                    ? selectedChoices.remove(item)
                    : selectedChoices.add(item);
                widget.onSelectionChanged?.call(selectedChoices);
              });
            }
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
