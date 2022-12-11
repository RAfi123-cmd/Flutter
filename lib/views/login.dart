import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc_delivery/controllers/login_controller.dart';
import 'package:mc_delivery/views/home.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: size.width,
                      height: size.height / 2.5,
                      color: Colors.red,
                    ),
                    Positioned(
                      child: Image.asset(
                        'assets/image/Mc Delivery 1.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: 505,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(60),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              'Login Now',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'E-mail',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: loginController.email,
                            focusNode: loginController.focusEmail.value,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'E-mail',
                                filled: true),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Password',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextField(
                            controller: loginController.password,
                            focusNode: loginController.focusPassword.value,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Password',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    loginController.isVisible.value =
                                        !loginController.isVisible.value;
                                  },
                                  icon: Icon(loginController.isVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                filled: true),
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: size.width,
                            decoration: BoxDecoration(),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(20),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: (() {
                                Get.to(Home());
                              }),
                              child: Text(
                                'Login',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: size.width,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(15),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: (() {
                                loginController.login();
                              }),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/Google.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Login With Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't Have Account?"),
                              SizedBox(width: 5),
                              Text(
                                'Register Now!',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
