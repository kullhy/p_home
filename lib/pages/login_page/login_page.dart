import 'package:flutter/material.dart';
import 'package:p_home/common/app_shadow.dart';
import 'package:p_home/common/app_text_styles.dart';
import 'package:p_home/pages/login_page/login_view_model.dart';
import 'package:p_home/pages/login_page/widgets/login_with_button.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return LoginViewModel();
      },
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: AppShadow.appShadow),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  // decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset(
                    "assets/icons/app_icon_no_back.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Text(
                    "P-HOME",
                    style: AppTextStyle.blackS24Bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Wealcome!",
                  style: AppTextStyle.blackS18Bold,
                ),
                Text(
                  "please login to continue our app",
                  style: AppTextStyle.greyS14,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.zero,
                    labelText: '  Email',
                    labelStyle: AppTextStyle.blackS20Bold,
                    suffixIcon: const Icon(
                      Icons.check_circle_sharp,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    labelText: '  Password',
                    labelStyle: AppTextStyle.blackS20Bold,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: const Icon(
                      Icons.check_circle_sharp,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Provider.of<LoginViewModel>(context, listen: false)
                        .signInWithEmailAndPassword(_emailController.text,
                            _passwordController.text, context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black),
                    child: Consumer<LoginViewModel>(
                        builder: (context, view, child) {
                      return Center(
                        child: view.isLoading
                            ? CircularProgressIndicator()
                            : Text(
                                "Login",
                                style: AppTextStyle.whiteS16Bold,
                              ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 0.5,
                      width: size.width * 0.35,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Text(
                      "Or",
                      style: AppTextStyle.blackS12Bold,
                    ),
                    Container(
                      height: 0.5,
                      width: size.width * 0.35,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const LoginWithButton(
                    content: "Facebook", image: "assets/icons/fb_icon.png"),
                const SizedBox(
                  height: 12,
                ),
                const LoginWithButton(
                    content: "Google", image: "assets/icons/google_icon.png"),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
