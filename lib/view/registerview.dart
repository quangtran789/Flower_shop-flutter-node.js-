import 'package:byshop/services/auth_services.dart';
import 'package:byshop/utils/global.colors.dart';
import 'package:byshop/view/loginview.dart';
import 'package:byshop/view/widgets/CustomButton.dart';
import 'package:byshop/view/widgets/custom_textfield.dart';

import 'package:flutter/material.dart';

class Registerview extends StatefulWidget {
  const Registerview({super.key});

  @override
  _RegisterviewState createState() => _RegisterviewState();
}

class _RegisterviewState extends State<Registerview> {
  final _signUpFormKey = GlobalKey<FormState>();

  final AuthServices authServices = AuthServices();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  void signUpUser() {
    authServices.signUpUser(
        context: context,
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'T-shirt Shop',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 40,
                      fontFamily: 'Matemasie',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Đăng ký tài khoản cho bạn',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextfield(
                        controller: emailController,
                        hintText: 'Email',
                        
                      ),
                      const SizedBox(height: 10),
                      CustomTextfield(
                        controller: nameController,
                        hintText: 'Tên đăng nhập',
                        
                      ),
                      const SizedBox(height: 10),
                      CustomTextfield(
                        controller: passwordController,
                        hintText: 'Mật khẩu',
                        
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Đăng ký',
                        onTap: () {
                          if (_signUpFormKey.currentState!.validate()) {
                            signUpUser();
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bạn đã có tài khoản rồi '),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginview()),
                );
              },
              child: Text(
                'Đăng nhập tại đây',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: GlobalColors.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
