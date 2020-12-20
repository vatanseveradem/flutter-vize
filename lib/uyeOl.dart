import 'package:flutter/material.dart';

class uyeOl extends StatefulWidget {
  @override
  _uyeOlState createState() => _uyeOlState();
}

class _uyeOlState extends State<uyeOl> {
  String email;
  String userName;
  String password;
  String passwordAgain;


  final _uyeOlKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _uyeOlKey,
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
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kullanıcı Adı",
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    userName = value;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Şifre",
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Şifre Tekrar",
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    passwordAgain = value;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      child: Text("Vazgeç"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    RaisedButton(
                      child: Text("Kaydol"),
                      onPressed: () {
                        _uyeOlKey.currentState.save();
                        if (password == passwordAgain) {
                          debugPrint("email: $email, password: $password");
                          Navigator.pushNamed(context, '/');
                        } else {
                          debugPrint("Girilen şifrelerin aynı olması gerekir.");
                        }

                      }
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
