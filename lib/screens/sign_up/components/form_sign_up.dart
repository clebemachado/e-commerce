import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../components/default_button.dart';
import '../../components/form_container.dart';

class FormSignUp extends StatelessWidget {
  FormSignUp({Key? key}) : super(key: key);
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
          Text("Phone number",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: getWidth(12))),
          Row(
            children: [
              SizedBox(
                width: SizeConfig.screenWidth * 0.2,
                child: FormContainer(child: dddFormField()),
              ),
              SizedBox(width: getWidth(8)),
              Expanded(child: FormContainer(child: numberPhoneFormField())),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Password",
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: getWidth(12)),
          ),
          FormContainer(
            child: passwordFormField(),
          ),
          SizedBox(height: getWidth(32)),
          DefaultButton(
            text: "Sign Up",
            press: () {},
            heightButton: getWidth(60),
          ),
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

  TextFormField dddFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        prefixText: "+",
      ),
    );
  }

  TextFormField numberPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(),
    );
  }

  TextFormField passwordFormField() {
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
