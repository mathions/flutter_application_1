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

  bool _hasError = false;
  String _errorMsg = "";

  @override
  void dispose() {
    _namaCtrl.dispose();
    _usernameCtrl.dispose();
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  submitRegisterForm() {
    print('submitted!');
    print(_emailCtrl.text);
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
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'nama'
            ),
          ),

          TextFormField(
            controller: _usernameCtrl,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'username'
            ),
          ),

          TextFormField(
            controller: _emailCtrl,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'email'
            ),
          ),

          TextFormField(
            controller: _passwordCtrl,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'password'
            ),
          ),

          Visibility(
            visible:_hasError,
            child: Text('$_errorMsg')
            ),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                child: Text('Register'),
                onPressed: () => submitRegisterForm(),
              )
            )

        ]),
        drawer: AppDrawer(),
    );
  }
}