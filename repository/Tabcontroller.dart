import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Diego App",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> with SingleTickerProviderStateMixin {
  static const String _title = 'Aplicación con Flutter';

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'IZQUIERDA'),
    Tab(text: 'DERECHA'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
          return Center(
            child: Text(
              'Esta es la pestaña $label',
              style: const TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),

    );
  }
}
