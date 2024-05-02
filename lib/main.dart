import 'package:app_bar_view_with_json/json_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  //  print(map["sections"][1]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Json Data in AppBarView",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              backgroundColor: Colors.red,
              bottom: TabBar(
                indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                Tab(text: "User", icon: Icon(Icons.person),),
                Tab(text: "Books", icon: Icon(Icons.book_online_outlined),),
                Tab(text: "sections", icon: Icon(Icons.class_outlined),),
              ]),
            ),
            body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: userData.length,
                    itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.person),),
                      title: Text('${userData[index]['firstName']} ${userData[index]['lastName']}'),
                      subtitle: Text(userData[index]['role']),
                    ),
                  );
                }),
              ListView.builder(
                itemCount: userData.length,
                  itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          userData[index]["bookTitle"]
                        ),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 4,
                        color: Colors.red,
                      )
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "MY Book",style: TextStyle(color: Colors.red),
                      ),
                    ),
                  );
                  }),
                Center(
                  child: Text("Sections Info"),
                )
              ],
            ),
          ),
      ),
    );
  }
}
