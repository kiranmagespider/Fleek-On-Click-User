import 'package:flutter/material.dart';
import 'package:flutter_app_barber/common/sliderightroute.dart';
import 'package:flutter_app_barber/tabs/booktab.dart';
import 'package:flutter_app_barber/tabs/hometab.dart';
import 'package:flutter_app_barber/tabs/navigationtab.dart';
import 'package:flutter_app_barber/tabs/offerstab.dart';
import 'package:flutter_app_barber/tabs/trendstab.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int cIndex = 0;

    List<Widget> tabs =[
      HomeTab(),
      BookTab(),
      TrendsTab(),
      OffersTab()
    ];

  void incrementTab(index) {
    setState(() {
      cIndex = index;
      if(cIndex == 0){
        Text('Home');
      }else if(cIndex == 1){
        Text('Saloon');
      }else if(cIndex == 2){
        Text('Trends');
      }else if(cIndex == 3){
        Text('Offers');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange[800]),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: ImageIcon(
                  AssetImage('images/img_nav_open.png'),
                  color: Colors.black,
                ),
                onPressed: (){
                  Navigator.push(context,SlideRightRoute(page:NavigationTab()));

                }
              );
            }
          ),
          actions: <Widget>[
            IconButton(
              icon: ImageIcon(
                AssetImage('images/img_filter_false.png'),
                color: Colors.black,
              ),
              onPressed: (){},
            )
          ],
        ),
        body: Center(
            child: tabs.elementAt(cIndex),
        ),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: DefaultTabController(
          length: 4,
          child: BottomNavigationBar(
            currentIndex:  cIndex,
            type: BottomNavigationBarType.fixed,
            items:<BottomNavigationBarItem> [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/img_home_tab.png'),  
                  color: Colors.black,
                ),
                activeIcon: ImageIcon(
                  AssetImage('images/img_home_tab_selected.png')
                ),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/img_saloon_list_tab.png'),  
                  color: Colors.black,
                ),
                activeIcon: ImageIcon(
                  AssetImage('images/img_saloon_list_tab_selected.png')
                ),
                title: Text('Saloon'),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/img_trends_tab.png'),  
                  color: Colors.black,
                ),
                activeIcon: ImageIcon(
                  AssetImage('images/img_trends_tab_selected.png')
                ),
                title: Text('Trends'),
              ),
              BottomNavigationBarItem(
                icon:  ImageIcon(
                  AssetImage('images/img_offers_tab.png'),  
                  color: Colors.black,
                ),
                activeIcon: ImageIcon(
                  AssetImage('images/img_offers_tab_selected.png')
                ),
                title: Text('Offers'),
              ),
            ],
            onTap: (index){
              incrementTab(index);
            },
          ),
        )
        ),
    );
  }
}

