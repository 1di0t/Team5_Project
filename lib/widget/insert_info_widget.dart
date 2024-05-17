import 'package:flutter/material.dart';

class InsertInfoWidget extends StatelessWidget {
  final String title;

  const InsertInfoWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Row(
        children: <Widget>[
          // const Text("회사명",
          //     style: TextStyle(
          //         fontFamily: 'NanumBarunpenB',
          //         fontSize: 20,
          //         color: Colors.black87)),
          // const SizedBox(
          //   width: 20,
          // ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: title,
                border: const OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '회사명을 입력해주세요';
                }
                return null;
              },
            ),
          )
        ],
      ),
    );
  }
}