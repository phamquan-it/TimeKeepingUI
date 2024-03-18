import 'package:flutter/material.dart';

class FirstHorizone extends StatefulWidget {
  const FirstHorizone({
    super.key,
    required this.firstTextButton,
    required this.lastTextButton
  });
  final String firstTextButton;
  final lastTextButton;
  @override
  State<FirstHorizone> createState() => _FirstButtonState();
}

class _FirstButtonState extends State<FirstHorizone> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          child: Row(

            children: [
              Container(
                width: (MediaQuery.of(context).size.width/2)-13,
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   Text(
                        widget.firstTextButton,
                        style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w300,
                            fontSize: 25
                        ),
                    ),
                     const Text(
                      "Lần trễ phép",
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                          color: Colors.grey,
                          fontSize: 17
                      ),
                    ),
                    const Text('trong tháng', style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
              const SizedBox(height: 10,width: 5,),
              Container(
                width: (MediaQuery.of(context).size.width/2)-13,
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.lastTextButton,
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w300,
                          fontSize: 25
                      ),
                    ),
                    const Text(
                      "Ngày nghỉ phép",
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                          color: Colors.grey,
                          fontSize: 17
                      ),
                    ),
                    const Text('', style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
            ],
          ),
        )

    );
  }
}
