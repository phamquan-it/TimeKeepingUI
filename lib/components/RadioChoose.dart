import 'package:flutter/material.dart';

class RadioChoose extends StatefulWidget {
  RadioChoose({super.key});
  LeaveTime dayLeave =  LeaveTime.one;
  @override
  State<RadioChoose> createState() => _RadioChooseState();
}
enum LeaveTime{one,many}
class _RadioChooseState extends State<RadioChoose> {
  LeaveTime _leaveTime = LeaveTime.one;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [

        SizedBox(
          child: Row(

            children: [
              SizedBox(
                width: (MediaQuery.of(context).size.width)-240,
                child: const Text('Thời gian'),
              ),
              SizedBox(
                width: 110,
                child: Row(
                  children: [
                    Radio(
                        value: LeaveTime.one,
                        groupValue: _leaveTime,
                        onChanged: (value){
                          setState(() {
                            _leaveTime = LeaveTime.one;
                            widget.dayLeave = _leaveTime;
                          });
                        }),
                    const Text('Một ngày'),
                  ],
                ),
              ),
              SizedBox(
                width: 110,
                child: Row(
                  children: [
                    Radio(
                        value: LeaveTime.many,
                        groupValue: _leaveTime,
                        onChanged: (value){
                          setState(() {
                            _leaveTime = LeaveTime.many;
                            widget.dayLeave = _leaveTime;
                          });
                        }),
                   const Text('Nhiều ngày'),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
