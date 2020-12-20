import 'package:flutter/material.dart';
import 'package:mobil_programlama_vize/anaSayfa.dart';
import 'package:mobil_programlama_vize/sifremiUnuttum.dart';
import 'package:mobil_programlama_vize/uyeOl.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      '/': (context) => loginPage(),
      '/uyeOl': (context) => uyeOl(),
      '/sifremiUnuttum': (context) => sifremiUnuttum(),
      '/anaSayfa': (context) => anaSayfa(),
      },
  ));
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String userName; 
  String password;

  final _loginPageKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _loginPageKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      child: Text("Üye Ol"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/uyeOl');
                      },
                    ),
                    MaterialButton(
                      child: Text("Şifremi Unuttum"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sifremiUnuttum');
                      },
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text("Giriş Yap"),
                  onPressed: () {
                    _loginPageKey.currentState.save();
                    debugPrint("userName: $userName, password: $password");
                    if (userName == "demo" && password == "demo") {
                      debugPrint("Giriş başarılı.");
                      Navigator.pushNamed(context, '/anaSayfa');
                    } else {
                      debugPrint("Hatalı giriş yaptınız.");
                    }
                  },
                )
              ],
            ),
          ),
        ),
    );
  }
}
