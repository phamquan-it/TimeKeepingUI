import 'package:flutter/material.dart';

class FieldGroup extends StatefulWidget {
  FieldGroup({
    super.key,
    required this.labelField
  });
  final String labelField;
  String inputData ="";
  @override
  State<FieldGroup> createState() => _FieldGroupState();
}

class _FieldGroupState extends State<FieldGroup> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(widget.labelField)),
        Expanded(
            flex: 2,
            child: TextField(onChanged: ((value){
              setState(() {
                widget.inputData = value;
              });
            }),
            )
        )
      ],
    );
  }
}
