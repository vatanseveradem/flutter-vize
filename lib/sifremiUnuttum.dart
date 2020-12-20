import 'package:flutter/material.dart';

class sifremiUnuttum extends StatefulWidget {
  @override
  _sifremiUnuttumState createState() => _sifremiUnuttumState();
}

class _sifremiUnuttumState extends State<sifremiUnuttum> {
  String email;

  final _sifremiUnuttumKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _sifremiUnuttumKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  email = value;
                },
              ),
              RaisedButton(
                child: Text("Gönder"),
                onPressed: () {
                  _sifremiUnuttumKey.currentState.save();
                  debugPrint("$email adresine şifre sıfırlama linki gönderilmiştir.");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
