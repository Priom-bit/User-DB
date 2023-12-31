import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        centerTitle: true,
      ),
      body:Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context,inded){
                  return Card(
                    margin: EdgeInsets.only(bottom: 10,),
                    child: ExpansionTile(
                      trailing: SizedBox(),


                      leading: CircleAvatar(
                        child: Icon(Icons.person),


                      ),
                      title: Text("Name"),
                      subtitle: Text("Email"),

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>UserAddScreen()));
                            }, child: Text("Edit")),
                            TextButton(onPressed: (){}, child: Text("delete")),
                          ],
                        )
                      ],
                    ),
                  );


                  }),
            ),
    );
  }
}
