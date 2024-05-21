import 'package:flutter/material.dart';
import 'package:holo_interview/api/network_api.dart';
import '../widget/insert_info_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> loginData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          toolbarHeight: 68,
          title: Text(
            'Login Page',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                InsertInfoWidget(
                  dataName: "아이디",
                  onSaved: (value) {
                    loginData["userID"] = value!;
                  },
                ),
                InsertInfoWidget(
                  dataName: "비밀번호",
                  onSaved: (value) {
                    loginData["password"] = value!;
                  },
                ),
                InsertInfoWidget(
                  dataName: "이름",
                  onSaved: (value) {
                    loginData["userName"] = value!;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      registerUser(context, loginData);
                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ));
  }
}
