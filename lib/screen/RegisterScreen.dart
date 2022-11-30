import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/AppDrawer.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _namaCtrl = TextEditingController();
  final _usernameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  void dispose() {
    _namaCtrl.dispose();
    _usernameCtrl.dispose();
    _emailCtrl.dispose();
    _passwordCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterScreen'),
        ),
        body: Column(children: [
          TextFormField(
            controller: _namaCtrl,
            decoration: InputDecoration(alignLabelWithHint: mounted),
          )
        ],)
        drawer: AppDrawer(),
    );
  }
}