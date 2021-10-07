import 'package:flutter/material.dart';

import '../constraints.dart';

class SendFeedback extends StatefulWidget {
  const SendFeedback({Key? key}) : super(key: key);

  @override
  _SendFeedbackState createState() => _SendFeedbackState();
}

class _SendFeedbackState extends State<SendFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kLightColor,
      body: Center(
        child: Text("hye Send Feedback"),
      ),
    );
  }
}
