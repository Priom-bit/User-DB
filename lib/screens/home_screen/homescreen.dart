import 'package:flutter/material.dart';
import 'package:user_db/screens/add_user/add_user_screen.dart';
import 'package:user_db/screens/widgets/custom_button.dart';
import 'package:user_db/user_list/user_list_screen.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButton(text: "add user", onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddUser()),
              );
            },  ),
          ),
          SizedBox(width: 10,),
          Center(
            child: CustomButton(text: "user list", onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserList()),
              );
            },  ),
          ),
        ],
      )
    );
  }
}
