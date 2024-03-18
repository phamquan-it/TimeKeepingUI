import 'package:flutter/material.dart';
import 'package:timekeeping/components/FieldGroup.dart';
import 'package:timekeeping/components/RadioChoose.dart';
import 'package:timekeeping/components/TextAreaGroup.dart';

class XinNghiPhep extends StatelessWidget {
  XinNghiPhep({super.key});
  RadioChoose radioChoose = RadioChoose();
  FieldGroup day = FieldGroup(labelField: "Ngày nghỉ");
  FieldGroup sess = FieldGroup(labelField: "Buổi nghỉ");
  FieldGroup reason = FieldGroup(labelField: "Lý do");
  TextArea nodeInput = TextArea();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.green,
        title: const Text(
          'Xin nghỉ phép',
          style: TextStyle(
              color: Colors.white)
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            radioChoose,day, sess, reason,nodeInput,
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton.icon(
                style: ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                ),
                onPressed: () {
                  //print(radioChoose.dayLeave);
                  // print(day.inputData);
                  // print(sess.inputData);
                  // print(reason.inputData);
                  //print(nodeInput.nodeInput);
                    showDialog<String>(
                      context: context,
                      builder: (context)=>
                          AlertDialog(
                            title: Text('Thành công'),
                            content: Container(
                              child: Text('Send data successfully'),
                            ),
                          )
                    );
                  },

                icon:const ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn), // Change color here
                  child: Icon(Icons.public), // Add your desired icon here
                ), // Add your desired icon here
                label:const Text(
                  'Gửi đơn xin nghỉ phép',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200
                  ),
                ), // Add your button label here
              ),
            )
          ],
        ),
      )
    );
  }
}