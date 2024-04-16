// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/setup/environment/env.dart';
import 'package:template/setup/utils/validate.dart';
import 'package:template/setup/widgets/button_widget.dart';
import 'package:template/setup/widgets/container_widget.dart';
import 'package:template/setup/widgets/custom_clip_path_widget.dart';
import 'package:template/setup/widgets/footer_widget.dart';
import 'package:template/setup/widgets/label_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String email;
  late String password;

  Future<void> submit() async {
    context.go('/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ENV.primaryBgColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ContainerWidget(
              decoration: BoxDecoration(color: ENV.primaryBgColor),
              padding: EdgeInsets.only(left: 20, right: 20, top: 100),
              child: LabelWidget.lg(
                text: 'LOGO',
                textColor: ENV.whiteTextColor,
                textAlign: TextAlign.center,
              ),
              // child: ImageWidget(
              //     imageUrl: ENV.logo,
              // ),
            ),
          ),
          Expanded(
            flex: 8,
            child: CustomClipPathWidget(
              child: ContainerWidget(
                padding: EdgeInsets.only(left: 20, right: 20, top: 70),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LabelWidget.md(
                            text: ENV.loginNavTitle,
                            textColor: ENV.primaryTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                          const Spacer(),
                          LabelWidget.md(
                            text: ENV.registerNavTitle,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                      const SizedBox(height: 40),
                      Align(
                        alignment: Alignment.topLeft,
                        child: LabelWidget.sm(text: ENV.emailLbl),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          password = value!.trim();
                          return Validate.requiredField(
                              value, 'Password is required.');
                        },
                      ),
                      const SizedBox(height: 40),
                      Align(
                        alignment: Alignment.topLeft,
                        child: LabelWidget.sm(text: ENV.passLbl),
                      ),
                      TextFormField(
                        validator: (value) {
                          password = value!.trim();
                          return Validate.requiredField(
                              value, 'Password is required.');
                        },
                      ),
                      const SizedBox(height: 40),
                      LabelWidget.xs(text: ENV.TermsAndConditionLbl),
                      const SizedBox(height: 40),
                      ButtonWidget(
                        text: ENV.loginButton,
                        color: ENV.primaryButtonColor,
                        textColor: ENV.whiteTextColor,
                        onTap: submit,
                      ),
                      const SizedBox(height: 40),
                      LabelWidget.xs(text: ENV.forgotUserPassLbl),
                      const SizedBox(height: 60),
                      const FooterWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
