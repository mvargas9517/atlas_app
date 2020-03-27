import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: LoginPage()));


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> 
        with SingleTickerProviderStateMixin 
        {
          TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          color: Colors.green,
          child: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 32,),
            controller: _tabController,
            labelColor: Colors.grey,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.purple,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Column(
                  children: <Widget>[
                    Text('5',style: TextStyle(fontSize: 20),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.airplanemode_active, size: 15,),
                        SizedBox(width: 5),
                        Text('Flights',style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Text('5',style: TextStyle(fontSize: 20),),
                    Text('Flights',style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Text('5',style: TextStyle(fontSize: 20),),
                    Text('Flights',style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}