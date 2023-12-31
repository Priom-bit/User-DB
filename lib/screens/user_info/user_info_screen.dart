import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class UserInfo extends StatelessWidget {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _bloodController = TextEditingController();
  final TextEditingController _nidController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Positioned(
                     bottom: -2,
                      left: 60,
                      child: Icon(Icons.add_a_photo))
                ],
              ),
              SizedBox(height: 10,),
              CustomTextField(
                hintText: "Address",
                controller: _addressController,
                style: TextStyle(fontSize: 16.0),
                // validator: (value) {  },
              ),
              SizedBox(height: 16.0),
              CustomTextField(
                hintText: "Mobile",
                controller: _mobileController,
                style: TextStyle(fontSize: 16.0),
                // validator: (value) {  },
              ),
              SizedBox(height: 16.0),
              CustomTextField(
                hintText: "Blood",
                controller: _bloodController,
                style: TextStyle(fontSize: 16.0),
                // validator: (value) {  },
              ),
              SizedBox(height: 16,),
              CustomTextField(
                hintText: "Nid",
                controller: _nidController,
                style: TextStyle(fontSize: 16.0),
                // validator: (value) {  },
              ),
              SizedBox(height: 16.0),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   CustomButton(
                     text: "Save",
                     onPressed: () {
                       // String name = _nameController.text;
                       // String email = _emailController.text;
                       // String password = _emailController.text;
                     },
                   ),
                   SizedBox(width: 10,),
                   CustomButton(
                     text: "Update",
                     onPressed: () {
                       // String name = _nameController.text;
                       // String email = _emailController.text;
                       // String password = _emailController.text;
                     },
                   ),
                 ],
               )
            ],
          ),
        ),
      ),
    );
  }
}
