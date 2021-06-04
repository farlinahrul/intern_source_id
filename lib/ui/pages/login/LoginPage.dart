import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email;
  TextEditingController passwordFilter;

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: const EdgeInsets.only(top: 42, left: 24, right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "EMAIL",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: email,
                    cursorColor: Color(0xff0177FB),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 16,
                        top: 8,
                        bottom: 8,
                      ),
                      hintText: "Enter EMAIL",
                      hintStyle: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        fontFamily: 'Mulish',
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff0177FB),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 14),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "PASSWORD",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: _isHidePassword,
                    controller: passwordFilter,
                    cursorColor: Color(0xff0177FB),
                    keyboardType: TextInputType.visiblePassword,
                    // style: TypographyStyle.button1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 16,
                        top: 12,
                        bottom: 8,
                      ),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                        fontFamily: 'Mulish',
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff0177FB),
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: _togglePasswordVisibility,
                        child: Icon(
                          _isHidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color:
                              _isHidePassword ? Colors.grey : Color(0xff0177FB),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(top: 12, bottom: 72),
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xff0711FB),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Mulish',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: FlatButton(
                      color: Color(0xff0711FB),
                      splashColor: Colors.blueAccent,
                      height: 48,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                        side: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => RegisterPage()));
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Mulish',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belum punya akun?",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Mulish',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => RegisterPage()));
                            });
                          },
                          child: Text(
                            " Register",
                            style: TextStyle(
                              color: Color(0xff0711FB),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Mulish',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
