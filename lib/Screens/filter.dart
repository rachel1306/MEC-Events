import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
class Filter extends StatefulWidget {
  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isChecked=false;

  Widget buildCheckbox() => ListTile(
    title: Text('ABC'),
    trailing: Checkbox(
      value: isChecked,
        onChanged: (bool ? value){
          setState(() {
            isChecked=value!;
          });
      },
    ),
    onTap: () {
      setState(() {
        this.isChecked=!isChecked;
      });
    }
  );
  createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.black,
        title: Text('Filter'),
        content: SingleChildScrollView(
          child: CheckboxListTile(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool ? value){
              setState(() {
                isChecked=value!;
                print("entered filter");
              });
            },
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hi'),
    );
  }
}

class Setting{
  String title;
  bool value;

  Setting({
    required this.title,
    this.value = false,
  });
}