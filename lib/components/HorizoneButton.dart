import 'package:flutter/material.dart';

class HorizoneButton extends StatefulWidget {
  const HorizoneButton({
    super.key,
    required this.firstTextButton,
    required this.firstBackground,
    required this.fistEvent,
    required this.firstIcon,
    required this.lastEvent,
    required this.lastBackground,
    required this.lastTextButton,
    required this.lastIcon
  });
  final String firstTextButton;
  final Color firstBackground;
  final firstIcon;
  final fistEvent;
  final String lastTextButton;
  final Color lastBackground;
  final lastEvent;
  final lastIcon;
  @override
  State<HorizoneButton> createState() => _HorizoneButtonState();
}

class _HorizoneButtonState extends State<HorizoneButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          child: Row(

            children: [
              GestureDetector(
                onTap: widget.fistEvent,
                child: Container(
                  width: (MediaQuery.of(context).size.width/2)-13,
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.all(10),
                  color: widget.firstBackground,
                  child: Column(
                    children: [
                      Icon(widget.firstIcon, color: Colors.white,),
                      Text(
                        widget.firstTextButton,
                        textAlign: TextAlign.center,
                        style:const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,width: 5,),
              GestureDetector(
                onTap: widget.lastEvent,
                child: Container(
                  width: (MediaQuery.of(context).size.width/2)-13,
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.all(10),
                  color: widget.lastBackground,
                  child: Column(
                    children: [
                      Icon(widget.lastIcon,color: Colors.white,),
                      Text(
                        widget.lastTextButton,
                        textAlign: TextAlign.center,
                        style:const TextStyle(color: Colors.white)
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )

    );
  }
}
