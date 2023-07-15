import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crash_course/view_model/controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login".tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "email_hint".tr),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(), hintText: "pass_hint".tr),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              loginController.loginApi();
            }, child: Obx(() {
              return loginController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("login".tr),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.login)
                      ],
                    );
            }))
          ],
        ),
      ),
    );
  }
}
