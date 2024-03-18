import 'package:flutter/material.dart';
import 'package:timekeeping/XinNghiPhep.dart';
import 'package:timekeeping/components/FirstHorizone.dart';
import 'package:timekeeping/components/HorizoneButton.dart';
import 'package:timekeeping/fetchAPI/LoginAPI.dart';
import 'package:timekeeping/fetchAPI/TimeLeaveAPI.dart';

class ChamCong extends StatefulWidget {
  const ChamCong({super.key});
  @override
  State<ChamCong> createState() => _ChamCongState();
}

class _ChamCongState extends State<ChamCong> {
  late Future<Leave> futureAlbum;
  @override
  void initState() {
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text('Chấm công',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300)
            ),
          backgroundColor: Colors.green,
      ),
      body: Container(
          padding:const EdgeInsets.all(10),
          child: ListView(
            children: [
              Column(
                children: [
                  FutureBuilder<Leave>(
                    future: futureAlbum,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return FirstHorizone(
                            firstTextButton: "${snapshot.data!.id}",
                            lastTextButton: "${snapshot.data!.userId}");
                        // return Text("${snapshot.data!.id}");
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  ),
                  HorizoneButton(
                    firstTextButton: "Chấm công",
                    firstBackground: Colors.orange,
                    fistEvent: (){

                    },
                    firstIcon: Icons.book,
                    lastTextButton: "Lịch công việc",
                    lastEvent: (){},
                    lastBackground: Colors.cyan,
                    lastIcon: Icons.calendar_month,
                  ),
                  HorizoneButton(
                    firstIcon: Icons.time_to_leave,
                    firstTextButton: "Xin nghỉ phép",
                    firstBackground: Colors.redAccent,
                    fistEvent: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>XinNghiPhep())
                      );
                    },
                    lastIcon: Icons.delivery_dining,
                    lastTextButton: "Xin đi trễ",
                    lastEvent: (){},
                    lastBackground: Colors.redAccent,
                  ),
                  HorizoneButton(
                    firstIcon: Icons.history,
                    firstTextButton: "Lịch sử chấm công",
                    firstBackground: Colors.blue,
                    fistEvent: (){},
                    lastIcon: Icons.card_giftcard,
                    lastTextButton: "Đơn của tôi",
                    lastEvent: (){},
                    lastBackground: Colors.green,
                  ),
                  HorizoneButton(
                    firstIcon: Icons.open_in_new,
                    firstTextButton: "Xét  duyệt đơn",
                    firstBackground: Colors.cyan,
                    fistEvent: (){},
                    lastIcon: Icons.watch,
                    lastTextButton: "Bảng  chấm công",
                    lastEvent: (){},
                    lastBackground: Colors.orange,
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}
