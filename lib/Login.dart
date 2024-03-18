import 'package:flutter/material.dart';
import 'package:timekeeping/ChamCongLayout.dart';
import 'package:timekeeping/fetchAPI/LoginAPI.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(flex: 1,child: Text('Tên đăng nhập'),),
              Expanded(flex: 2,child: TextField(controller: username,))
            ],
          ),
          Row(
            children: [
              const Expanded(child: Text('Mật khẩu')),
              Expanded(flex: 2,child: TextField(controller: password))
            ],
          ),
          ElevatedButton(
              onPressed: ()  async{
                fetchLogin(username.text, password.text).then((value){
                  if(value.id  != -1){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChamCong()),
                    );
                  }else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            content: Text(
                                'Login error',
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        });
                  };
                });

              },
              child:const Text('Đăng nhập'),
          )
        ],
      ),
    );
  }
}
