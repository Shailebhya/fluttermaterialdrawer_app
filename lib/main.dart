import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttermaterialdrawer_app/new_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50]:null
      ),
      home: HomePage(),
      routes: <String,WidgetBuilder> {
      "/a": (BuildContext context) => NewPage("New PAge")
    }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5 : 0,
      ),
      drawer:Drawer(
        child:ListView(
          children: [
            UserAccountsDrawerHeader(
            accountName: Text("G Shailebhyanand"),
              accountEmail: Text("shailebhya@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.cyanAccent,
                child: Text("G"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  child: Text("G"),
                ),
              ],
          ),

            ListTile(
              title: Text("Page one"), 
              trailing: Icon(Icons.nature),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).pushNamed("/a");
              }
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.add),
            ),
            Divider(),
            ListTile(
              title: Text("Page one"),
              trailing: Icon(Icons.nature),
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.close),
              onTap: ()=> Navigator.pop(context),
            ),
          ],

        )
      ) ,
      body: Container(
        child: Center(
          child: Text("HOME PAGE"),
        ),
      ),
    );
  }
}

