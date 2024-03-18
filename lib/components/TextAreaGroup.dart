import 'package:flutter/material.dart';

class TextArea extends StatefulWidget {

  String  nodeInput = "";
  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Ghi chú'),
        TextField(
          maxLines: 4,
          decoration:const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue, // Set border color here
                width: 1.0, // Set border width here
              ),
            )
          ),
          onChanged: (value){
            setState(() {
              widget.nodeInput = value;
            });
          }
        )
      ],
    );
  }
}
