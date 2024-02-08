import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  void _sendFeedback(BuildContext context) {
    String name = _nameController.text;
    String email = _emailController.text;
    String mobile = _mobileController.text;
    String message = _messageController.text;

    // Here you can handle sending the feedback, e.g., send it to an API, save it locally, etc.
    // For simplicity, let's just print the feedback.
    print("Name: $name");
    print("Email: $email");
    print("Mobile: $mobile");
    print("Message: $message");

    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Feedback Sent"),
          content: Text("Thank you for your feedback, $name!"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Feedback"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputField(labelText: "Your Name", controller: _nameController),
                SizedBox(height: 20.0),
                InputField(labelText: "Your Email Address", controller: _emailController),
                SizedBox(height: 20.0),
                InputField(labelText: "Mobile Number", controller: _mobileController, keyboardType: TextInputType.phone),
                SizedBox(height: 20.0),
                InputField(labelText: "Message", controller: _messageController, maxLines: 5),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => _sendFeedback(context),
                  child: Text("Send Feedback"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final int maxLines;
  final TextInputType keyboardType;

  const InputField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
