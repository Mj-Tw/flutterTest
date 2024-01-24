import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/organisms/text_form_field.dart';
import '../widgets/organisms/ui_helper.dart';

@RoutePage()
class InputValidationPage extends StatefulWidget {
  @override
  State<InputValidationPage> createState() => _InputValidationPageState();
}

class _InputValidationPageState extends State<InputValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.of(context).pop()),
        centerTitle: false,
        title: const Text('Dummy UI'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Align(
                alignment: Alignment.centerLeft, child: Text('Hi There', style: TextStyle(color: Colors.blue))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Please enter your name and email :)', style: TextStyle(color: Colors.grey))),
          ),
          Container(
              margin: UIHelper.padding(vertical: 4, horizontal: 10),
              padding: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              child: TextFormFieldCustom(
                title: 'Name',
                hintText: "Enter your name..",
                preffixIcon: SvgPicture.asset('assets/svgs/user_icon.svg'),
              )),
          Container(
              padding: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              margin: UIHelper.padding(vertical: 4, horizontal: 10),
              child: TextFormFieldCustom(
                title: 'Email',
                hintText: "Enter your email..",
                preffixIcon: SvgPicture.asset('assets/svgs/email_icon.svg'),
              )),
          Spacer(),
          Container(
            margin: const EdgeInsets.all(20.0),
            width: UIHelper.mediaWidth(context, 1),
            child: MaterialButton(
              child: new Text(
                "SUBMIT",
                style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () => {},
              color: Colors.blue.shade50,
            ),
          )
        ],
      ),
    );
  }
}
