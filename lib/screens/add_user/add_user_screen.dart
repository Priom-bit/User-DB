import 'package:flutter/material.dart';
import 'package:user_db/screens/user_info/user_info_screen.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class AddUser extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Add"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  hintText: "Name",
                  controller: _nameController,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                CustomTextField(
                  hintText: "Email",
                  controller: _emailController,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                CustomTextField(
                  hintText: "Password",
                  controller: _passwordController,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                CustomButton(
                  text: "Next",
                  onPressed: () {

                      if(_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserInfo()),
                        );
                      }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
