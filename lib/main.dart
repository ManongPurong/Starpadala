import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'StarCarRental.dart';
import 'StarVehicleCategory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 25,
                    left: 25,
                    // bottom: 25,
                  ),
                  child: (Container(
                    // color: Colors.blue,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          width: 80,
                          height: 80,
                          image: AssetImage(
                            'images/StarCarLogo.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          child: Text(
                            'STAR PADALA',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Container(
                    height: 25,
                    // color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 23.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Container(
                              color: Colors.white38,
                              child: Row(
                                children: <Widget>[
                                  Image(
                                    width: 15,
                                    height: 15,
                                    image: AssetImage(
                                      'images/LocationPin.png',
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'My Home',
                                        style: TextStyle(
                                            fontSize: 5, color: Colors.white),
                                      ),
                                      Text(
                                        'Malolos, Bulacan',
                                        style: TextStyle(
                                            fontSize: 5, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  //SearchBar
                  width: 365,
                  child: CupertinoSearchTextField(
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),

        //-------------------------------Body--------------------------//
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                // clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    //White container
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    height: 500,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 10,
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Available Vehicles',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.red,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  width: 70,
                                  height: 20,
                                  color: Colors.grey[400],
                                  child: Center(
                                    child: Text(
                                      'View All',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, left: 15.0),
                          child: Container(
                            height: 395,
                            child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemCount: 8,
                              separatorBuilder: (context, _) => SizedBox(
                                height: 8,
                              ),
                              itemBuilder: (context, _) =>
                                  StarVehicleCategory(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Positioned(
              //   top: -20,
              //   right: 20,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: Colors.red,
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey,
              //           blurRadius: 3.0, // soften the shadow
              //           spreadRadius: 1.0, //extend the shadow
              //           offset: Offset(
              //             3.0, // Move to right 10  horizontally
              //             2.0, // Move to bottom 10 Vertically
              //           ),
              //         ),
              //       ],
              //     ),
              //     width: 40.0,
              //     height: 40.0,
              //     child: Icon(
              //       Icons.add_shopping_cart_rounded,
              //       color: Colors.white,
              //       size: 25.0,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),

        //----------------Bottom NavBar-----------------------------//
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black54,
            iconSize: 20,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                ),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: 'Notify',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text('Hello World')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.camera,
          color: Colors.white,
          size: 29,
        ),
        backgroundColor: Colors.black,
        tooltip: 'Capture Picture',
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
