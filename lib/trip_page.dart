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
                        height: _height * 0.45,
                        width: _width,
                        child: Image.asset('images/dubai.jpg', fit: BoxFit.cover,),
                      ),
                      Container(
                        height: _height * 0.45,
                        width: _width,
                        color: Color.fromRGBO(41, 52, 93 , 0.5),
                      ),
                      Positioned(
                    bottom: 0,
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      color: Color.fromRGBO(41, 52, 93 , 0.5),
                      child: TabBar(
                        labelPadding: EdgeInsets.symmetric(horizontal: 33.5),
                        controller: _tabController,
                        labelColor: Colors.white,
                        indicatorColor: Colors.white,
                        unselectedLabelColor: Colors.white.withOpacity(0.3),
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
                                    Text('FLIGHTS',style: TextStyle(fontSize: 12)),
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
                                    Text('HOTELS',style: TextStyle(fontSize: 12)),
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
                                    Text('CARS',style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 135,
                    child: Icon(AntDesign.left, size: 25, color: Colors.white)),
                    Positioned(
                    right: 20,
                    top: 135,
                    child: Icon(AntDesign.right, size: 25, color: Colors.white)),
                  Positioned(
                    top: 40,
                      right: 20,
                      child: Icon(Icons.menu, color: Colors.white),
                    ),
                    Positioned(
                      top: 80,
                      right: 100,
                      child: 
                      Column(
                        children: <Widget>[
                          Text('My trip in',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                           ),
                          ),
                          Text('Dubai, Emirates',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                       ),
                      ),
                      SizedBox(height: 10,),
                          Text('PARTICIPANTS',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                               ),
                              ),
                               SizedBox(height: 5,),
                              Container(
                                width: _width * 0.27,
                                child: Stack(
                                      children: <Widget>[
                                    Positioned(
                                      left: 65,
                                        child: CircleAvatar(
                                        backgroundImage: AssetImage('images/person0.jpg'),
                                      ),
                                    ),
                                    Positioned(
                                      left: 35,
                                        child: CircleAvatar(
                                        backgroundImage: AssetImage('images/person1.jpg'),
                                      ),
                                    ),
                                    CircleAvatar(
                                  backgroundImage: AssetImage('images/person2.jpg'),
                                ),
                                      ],
                                    ),
                              ),
                        ],
                      ),
                     ),
                    ],
                  ),        
                  Stack(
                    children: <Widget>[
                          Container(
                            height: _height * 0.16,
                            width: _width,
                            color: Color.fromRGBO(41, 52, 93 , 0.7),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('CDG',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    ),
                                    SizedBox(width: 15),
                                    Icon(Octicons.dash, size: 15, color: Colors.white.withOpacity(0.3),),
                                    SizedBox(width: 10),
                                    Icon(Ionicons.ios_airplane, size: 25, color: Colors.white.withOpacity(0.3)),
                                    SizedBox(width: 10),
                                    Icon(Octicons.dash, size: 15, color: Colors.white.withOpacity(0.3),),
                                    SizedBox(width: 15),
                                    Text('DXB',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('PARIS', style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)
                                    ),),
                                    SizedBox(width: _width * 0.16),
                                    Text('B STOP', style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)
                                    ),),
                                    SizedBox(width: _width * 0.15),
                                    Text('DUBAI', style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)
                                    ),),
                                  ],
                                ),
                                SizedBox(height: _height * 0.03,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('FLY EMIRATES - XC998 - AIRBUS A380', style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),),
                                      SizedBox(width:  _width* 0.05,),
                                      Icon(Icons.keyboard_arrow_down,
                                      color: Colors.white,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Column(
                              children: <Widget>[
                                Icon(FontAwesome.circle,
                                size: 12,
                                color: Colors.lightGreenAccent[400],),
                                SizedBox(height: 5),
                                Container(
                                  height: _height * 0.08,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.transparent.withOpacity(0.2),
                                  ),
                                ),
                              ],
                            ))
                    ],
                  ),    
                  Stack(
                    children: <Widget>[
                          Container(
                            height: _height * 0.16,
                            width: _width,
                            color: Color.fromRGBO(41, 52, 93 , 0.7),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('DXB',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    ),
                                    SizedBox(width: 15),
                                    Icon(Octicons.dash, size: 15, color: Colors.white.withOpacity(0.3),),
                                    SizedBox(width: 10),
                                    Icon(Ionicons.ios_airplane, size: 25, color: Colors.white.withOpacity(0.3)),
                                    SizedBox(width: 10),
                                    Icon(Octicons.dash, size: 15, color: Colors.white.withOpacity(0.3),),
                                    SizedBox(width: 15),
                                    Text('CDG',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('DUBAI', style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)
                                    ),),
                                    SizedBox(width: _width * 0.16),
                                    Text('B STOP', style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)
                                    ),),
                                    SizedBox(width: _width * 0.15),
                                    Text('PARIS', style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.5)
                                    ),),
                                  ],
                                ),
                                SizedBox(height: _height * 0.03,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('FLY EMIRATES - XC998 - AIRBUS A380', style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),),
                                      SizedBox(width:  _width* 0.05,),
                                      Icon(Icons.keyboard_arrow_down,
                                      color: Colors.white,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Column(
                              children: <Widget>[
                                Icon(FontAwesome.circle,
                                size: 12,
                                color: Colors.lightGreenAccent[400],),
                                SizedBox(height: 8),
                                Container(
                                  height: _height * 0.08,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.transparent.withOpacity(0.2),
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),   
                  Container(
                    height: _height * 0.077,
                    width: _width,
                    color: Colors.black.withOpacity(0.7),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text('Douglas R.', style: TextStyle(
                          color: Colors.white,
                          ),
                         ),
                         SizedBox(width: _width * 0.1),
                         Icon(MaterialCommunityIcons.silverware, color: Colors.white.withOpacity(0.2), size: 20.0),
                         SizedBox(width: _width * 0.03),
                         Icon(Entypo.signal, color: Colors.white.withOpacity(0.2), size: 20.0),
                         SizedBox(width: _width * 0.1),
                         Text('< 30 kgs included', style: TextStyle(
                           color: Colors.white.withOpacity(0.2),
                          ),
                         ),
                         SizedBox(width: _width * 0.02),
                         Padding(
                           padding: const EdgeInsets.only(bottom: 5.0),
                           child: Icon(MaterialCommunityIcons.check_bold, size: 20, color: Colors.greenAccent[400],),
                         )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: _height * 0.077,
                    width: _width,
                    color: Colors.black.withOpacity(0.7),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text('Ada O.', style: TextStyle(
                          color: Colors.white,
                          ),
                         ),
                         SizedBox(width: _width * 0.17),
                         Icon(MaterialCommunityIcons.silverware, color: Colors.white.withOpacity(0.2), size: 20.0),
                         SizedBox(width: _width * 0.03),
                         Icon(Entypo.signal, color: Colors.white.withOpacity(0.2), size: 20.0),
                         SizedBox(width: _width * 0.1),
                         Text('< 30 kgs included', style: TextStyle(
                           color: Colors.white.withOpacity(0.2),
                          ),
                         ),
                         SizedBox(width: _width * 0.02),
                         Padding(
                           padding: const EdgeInsets.only(bottom: 5.0),
                           child: Icon(MaterialCommunityIcons.check_bold, size: 20, color: Colors.greenAccent[400]),
                         )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
    );
  }
}