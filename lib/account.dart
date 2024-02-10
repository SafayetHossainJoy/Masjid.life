import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
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
                // Refresh the page
                setState(() {
                  _nameController.clear();
                  _emailController.clear();
                  _mobileController.clear();
                  _messageController.clear();
                });
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 4.0,
              child: Container(
                width: 300,
                padding: EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 151, 187, 171),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Account.png'),
                          fit: BoxFit
                              .cover, // Adjust this according to your requirement
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Head Office',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Carry, North Carolina, USA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Phone: 360-8288',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Email: example@example.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 4.0,
              child: Container(
                width: 300,
                padding: EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 151, 187, 171),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Account.png'),
                          fit: BoxFit
                              .cover, // Adjust this according to your requirement
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Head Office',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Carry, North Carolina, USA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Phone: 360-8288',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Email: example@example.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InputField(
                          labelText: "Your Name", controller: _nameController),
                      SizedBox(height: 20.0),
                      InputField(
                          labelText: "Your Email Address",
                          controller: _emailController),
                      SizedBox(height: 20.0),
                      InputField(
                          labelText: "Mobile Number",
                          controller: _mobileController,
                          keyboardType: TextInputType.phone),
                      SizedBox(height: 20.0),
                      InputField(
                          labelText: "Message",
                          controller: _messageController,
                          maxLines: 5),
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
          ],
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
