import 'package:byshop/services/auth_services.dart';
import 'package:byshop/view/registerview.dart';
import 'package:byshop/view/widgets/CustomButton.dart';
import 'package:byshop/view/widgets/custom_textfield.dart';
import 'package:byshop/view/widgets/social.login.dart';
import 'package:flutter/material.dart';

class Loginview extends StatefulWidget {
  static const String routeName = '/auth-login';
  const Loginview({super.key});

  @override
  _LoginviewState createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  final AuthServices authServices = AuthServices();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void signInUser() {
    authServices.signInUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo (2).png',
                    width: 250,
                    height: 200,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // Khung bao quanh phần đăng nhập
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 10),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                      width: 1.5,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Matemasie',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Form(
                        key: _signInFormKey,
                        child: Column(
                          children: [
                            CustomTextfield(
                              controller: emailController,
                              hintText: 'Tài khoản email',
                              
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextfield(
                              controller: passwordController,
                              hintText: 'Mật khẩu',
                              
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Registerview()),
                                    );
                                  },
                                  child: const Text(
                                    "Quên mật khẩu?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              text: 'Đăng nhập',
                              onTap: () {
                                if (_signInFormKey.currentState!.validate()) {
                                  signInUser();
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Center(
                    child: Text(
                  '-Hoặc đăng nhập bằng-',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
                const SocialLogin(),
                const SizedBox(
                  height: 25,
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
            Text('Không có tài khoản? '),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registerview()),
                );
              },
              child: const Text(
                'Đăng ký tại đây',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff399918),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
