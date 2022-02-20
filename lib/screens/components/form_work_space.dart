import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';

class FormWorkSpaceSeacher extends StatelessWidget {
  FormWorkSpaceSeacher({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: const Color(0xffC9CEDA),
        width: getWidth(0.6),
      ),
      borderRadius: BorderRadius.circular(6),
    );
    return Container(
      margin: EdgeInsets.all(getWidth(24)),
      child: Form(
        key: _formKey,
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: outlineInputBorder,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            labelText: "What do you do?",
            labelStyle: TextStyle(
              color: const Color(0xff888C93),
              fontSize: getWidth(16),
            ),
            suffixIcon: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset("assets/icons/Settings.svg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
