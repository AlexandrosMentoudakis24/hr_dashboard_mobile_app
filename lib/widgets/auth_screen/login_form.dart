import 'package:flutter/material.dart';
import 'package:hr_dashboard_mobile_app/screens/home_screen/home_screen.dart';
import 'package:hr_dashboard_mobile_app/widgets/_global/primary_button.dart';
import 'package:hr_dashboard_mobile_app/widgets/auth_screen/forgot_password_button.dart';
import 'package:hr_dashboard_mobile_app/widgets/auth_screen/remember_me_button.dart';
import 'package:hr_dashboard_mobile_app/widgets/auth_screen/single_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    required this.maxWidth,
    super.key,
  });

  final double maxWidth;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  var _emailTextValue = "";
  var _passwordTextValue = "";

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (!emailFocusNode.hasPrimaryFocus) {
              setState(() {
                emailFocusNode.requestFocus();
              });
            }
          },
          child: Container(
            height: 100,
            margin: const EdgeInsets.only(top: 30),
            width: widget.maxWidth,
            child: SingleTextField(
              icon: Icons.email_outlined,
              title: "Email",
              placeholder: "My Email",
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
              focusNode: emailFocusNode,
              onFieldChange: (newValue) {
                setState(() {
                  _emailTextValue = newValue.trim();
                });
              },
              onFieldSubmit: (newValue) {
                setState(() {
                  _emailTextValue = newValue.trim();
                });

                passwordFocusNode.requestFocus();
              },
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (!passwordFocusNode.hasPrimaryFocus) {
              setState(() {
                passwordFocusNode.requestFocus();
              });
            }
          },
          child: Container(
            height: 100,
            margin: const EdgeInsets.only(top: 15),
            width: widget.maxWidth,
            child: SingleTextField(
              icon: Icons.lock_outlined,
              title: "Password",
              placeholder: "My Password",
              inputType: TextInputType.visiblePassword,
              isPrivateField: true,
              focusNode: passwordFocusNode,
              onFieldChange: (newValue) {
                setState(() {
                  _passwordTextValue = newValue.trim();
                });
              },
              onFieldSubmit: (newValue) {
                setState(() {
                  _passwordTextValue = newValue.trim();
                });
              },
            ),
          ),
        ),
        Container(
          height: 25,
          width: widget.maxWidth,
          margin: const EdgeInsets.only(top: 15),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RememberMeButton(),
              ForgotPasswordButton(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: SizedBox(
              width: widget.maxWidth,
              child: const PrimaryButton(
                btnText: "Sign In",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
