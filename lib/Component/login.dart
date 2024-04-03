import 'package:flutter/material.dart';
import 'package:hug_online_ui/Component/signup.dart';
import 'package:hug_online_ui/Component/forgot_password.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_login.jpg',
              width: 300,
              height: 100,
            ),
            SizedBox(height: 20.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: 'อีเมล หรือ เบอร์โทร',
                        prefixIcon: Icon(Icons.email),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'กรุณากรอก อีเมล หรือ เบอร์โทร';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: 'รหัสผ่าน',
                        prefixIcon: Icon(Icons.key),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'กรุณากรอก รหัสผ่าน';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage()),
                          );
                        },
                        child: Text(
                          'ลืมรหัสผ่าน ?',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 70, 88, 102)),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {}
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Center(
                        child: Text('เข้าสู่ระบบ'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'ไม่มีบัญชีใช่ไหม ?',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: Text(
                          'ลงทะเบียน',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 243, 152, 33)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
