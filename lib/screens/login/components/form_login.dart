import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../components/default_button.dart';
import '../../components/form_container.dart';

class FormLogin extends StatelessWidget {
  FormLogin({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: getWidth(12)),
          ),
          FormContainer(
            child: emailFormField(),
          ),
          const SizedBox(height: 20),
          Text(
            "Password",
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: getWidth(12)),
          ),
          FormContainer(
            child: passworldFormField(),
          ),
          const SizedBox(height: 42),
          DefaultButton(
            text: "Login",
            press: () {},
            heightButton: getWidth(60),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: "Eg. jamesburnes@gmail.com",
        hintStyle: TextStyle(
          color: Color(0xffA6A798),
        ),
      ),
    );
  }

  TextFormField passworldFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        suffixIcon: Icon(
          Icons.visibility_off_outlined,
          color: Color(0xffA6A798),
        ),
      ),
    );
  }
}
