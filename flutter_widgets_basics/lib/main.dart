import 'package:flutter/material.dart';
import 'package:flutterwidgetsbasics/second.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: <String, WidgetBuilder>{
      "/second":(BuildContext context) => SecondActivity()
    },
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  //DrawerHeader(
                  //child: Text('Header'),
                  accountName: Text('Diego David'),
                  accountEmail: Text('diego@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text("D.D"),
                  ),
                  otherAccountsPictures: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('A'),
                    )
                  ],
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Ir a segunda actividad'),
                  trailing: Icon(Icons.looks_two),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed("/second");
                    // Navigator.pushNamed(context, "/second");
                  },
                ),
                ListTile(
                  title: Text('Opcion 2'),
                  trailing: Icon(Icons.android),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Cerrar'),
                  trailing: Icon(Icons.close),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            )
        )
    );
  }
}