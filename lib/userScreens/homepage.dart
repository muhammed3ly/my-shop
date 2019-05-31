import 'dart:ui' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop/tools/store.dart';
import 'package:myshop/userScreens/itemdetails.dart';
import 'cart.dart';
import 'favourites.dart';
import 'messages.dart';
import 'orderhistory.dart';
import 'ordernotification.dart';
import 'profilesettings.dart';
import 'deliveryaddress.dart';
import 'aboutus.dart';
import 'login.dart';
import 'dart:math';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite,
            color: Colors.white,),
            onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(
              builder: (BuildContext context){
                return Favourites();
              }
            ));
            },),
          Stack(
            alignment: Alignment.center,
          children: <Widget>[
            IconButton(icon: Icon(Icons.chat,
              color: Colors.white,),
              onPressed: (){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context){
                      return Messages();
                    }
                ));
              },),
            Positioned(
              right: 28.0,
              bottom: 28.0,
              child:
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.red,
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 8.0),
                  ),
                )
            ),
          ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Flexible(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
                itemCount: storeItems.length,
                itemBuilder: (BuildContext context,int index){
                bool big = (storeItems[index].itemName.length > 6);
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ItemDetails(
                        itemImage: storeItems[index].itemImage,
                        itemName: storeItems[index].itemName,
                        itemRating: storeItems[index].itemRating,
                        itemPrice: storeItems[index].itemPrice,
                      )
                    ));
                  },
                  child: Card(

                    child: Stack(
                      children: <Widget>[
                        Stack(
                      alignment: FractionalOffset.bottomCenter,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit:BoxFit.contain,
                                image: NetworkImage(storeItems[index].itemImage))
                          ),
                        ),
                        Container(
                        height: 35.0,
                          color: Colors.black.withAlpha(100),
                          child:
                          Padding(
                            padding:const EdgeInsets.all(8.0),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                big?
                                Text("${storeItems[index].itemName.substring(0, 6)}...",
                                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),):
                                Text("${storeItems[index].itemName}",
                                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white))
                                ,
                                Text(storeItems[index].itemPrice.toString(),
                                  style: TextStyle(color: Colors.red[500],fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                        IconButton(icon: Icon(Icons.favorite_border),)
                      ],
                    )
                  ),
                );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.shopping_cart),
              onPressed: (){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context){
                      return Cart();
                    }
                ));
              }
          ),
          CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: Text('0',
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Muhammed Aly'),
              accountEmail: Text('muhammed.aly16@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.black,),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child:
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text('Order Notifications'),
              onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                builder: (BuildContext context){
                return OrderNotification();
                }
                ));
                },
            ),
            ListTile(
              onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context){
                      return OrderHistory();
                    }
                ));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child:
                Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text('Order History'),
            ),
            Divider(
             // color: Colors.grey,
              indent: 67.0,
            ),
            ListTile(
              onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context){
                      return ProfileSettings();
                    }
                ));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child:
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text('Profile Settings'),
            ),
            ListTile(
              onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context){
                      return DeliveryAddress();
                    }
                ));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child:
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text('Delivry Address'),
            ),
            Divider(
              // color: Colors.grey,
              indent: 67.0,
            ),
            ListTile(
              onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context){
                      return AboutUs();
                    }
                ));
              },
              leading: Text('About Us'),
              trailing: CircleAvatar(
                backgroundColor: Colors.black,
                child:
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            ListTile(
              onTap:(){
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (BuildContext context){
                      return Login();
                    }
                ));
              },
              leading: Text('Login'),
              trailing: CircleAvatar(
                backgroundColor: Colors.black,
                child:
                Icon(
                  Icons.input,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
