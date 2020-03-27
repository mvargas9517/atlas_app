import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() => runApp(MaterialApp(
  home: DestinationPage()));


class DestinationPage extends StatefulWidget {
  @override
  _DestinationPageState createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> 
        with SingleTickerProviderStateMixin 
        {
          TabController _tabController;
          int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

        

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _cIndex,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(MaterialCommunityIcons.view_dashboard_variant, color: Colors.white),
            title: new Text('')
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(MaterialIcons.search, color: Colors.grey),
            title: new Text('')
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(MaterialCommunityIcons.heart, color: Colors.grey),
            title: new Text('')
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(MaterialIcons.person, color: Colors.grey),
            title: new Text('')
          )
        ],
        onTap: (index){
            _incrementTab(index);
        },
      ),
          body: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: _height * 0.5,
                        width: _width,
                        child: Image.asset('images/dubai.jpg', fit: BoxFit.cover,),
                      ),
                      Container(
                        height: _height * 0.5,
                        width: _width,
                        color: Color.fromRGBO(41, 52, 93 , 0.4),
                      ),
                      Positioned(
                    bottom: 0,
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      color: Color.fromRGBO(41, 52, 93 , 0.5),
                      child: TabBar(
                        labelPadding: EdgeInsets.symmetric(horizontal: 28),
                        controller: _tabController,
                        labelColor: Colors.white,
                        indicatorColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        tabs: <Widget>[
                          Tab(
                            child: Column(
                              children: <Widget>[
                                Text('5',style: TextStyle(fontSize: 20),),
                                SizedBox(height: 5,),
                                Row(
                                  children: <Widget>[
                                    Icon(MaterialCommunityIcons.airplane_takeoff, size: 15,),
                                    SizedBox(width: 5),
                                    Text('FLIGHTS',style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Column(
                              children: <Widget>[
                                Text('12',style: TextStyle(fontSize: 20),),
                                SizedBox(height: 5,),
                                Row(
                                  children: <Widget>[
                                    Icon(MaterialCommunityIcons.hotel, size: 15,),
                                    SizedBox(width: 12),
                                    Text('HOTELS',style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Column(
                              children: <Widget>[
                                Text('2',style: TextStyle(fontSize: 20),),
                                SizedBox(height: 5,),
                                Row(
                                  children: <Widget>[
                                    Icon(MaterialCommunityIcons.car, size: 15,),
                                    SizedBox(width: 5),
                                    Text('CARS',style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                    ],
                  ),             
                ],
              ),
    );
  }
}