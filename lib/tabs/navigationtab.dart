import 'package:flutter/material.dart';

class NavigationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabNavigate();
  }
}


class TabNavigate extends StatefulWidget {
  @override
  _TabNavigateState createState() => _TabNavigateState();
}

class _TabNavigateState extends State<TabNavigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                },
            );
          
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    minRadius: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Kiran Mage',
                  style: TextStyle(
                    fontFamily: 'Montserrat-SemiBold',
                    fontSize: 17,
                    color: Colors.white
                  ),),
                  Text('Android Developer',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 14,
                    color: Colors.white
                  ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text('Your booking',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15,
              ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text('Trends',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15,
              ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text('Refer and Earn',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15,
              ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text('Support',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15,
              ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text('About us',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15,
              ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text('Terms & Condition',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15,
              ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text('FAQs',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15,
              ),)
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20, top: 40),
              child: Row(
                children: <Widget>[
                  Text('Log Out',
              style: TextStyle(
                fontFamily: 'Montserrat-Medium',
                color: Colors.white,
                fontSize: 15 ,
              ),),
              Icon(Icons.arrow_forward, 
              color: Colors.white,
              size: 20,),
                ],
              ),
            ),
          ],
        ),),
    );
  }
}