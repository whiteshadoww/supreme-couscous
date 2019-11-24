import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_utility/pages/util.dart';
import 'package:mobile_utility/widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = Icons.home;

  var _tabList = {
    'Home': Icons.home,
    'Card': Icons.credit_card,
    'Message': Icons.message,
    'Menu': Icons.menu
  };

  var menuList = {
    'Electricity': Icons.power,
    'Water': Icons.local_drink,
    'Gas': Icons.local_gas_station,
    'Heating': Icons.delete_forever,
    'Fare': Icons.directions_bus,
    'Phone': Icons.phone
  };

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 1080, height: 2280, allowFontScaling: true)
          ..init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Payment",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Colors.black,
            letterSpacing: 2,
          ),
        ),
        actions: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "History",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    55,
              ),
              Column(
                children: [
                  _buildCards(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Public service",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.deepPurple[900],
                              letterSpacing: 1.5),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_horiz,
                          size: 34,
                          color: Colors.purple[900],
                        )
                      ],
                    ),
                  ),
                  _buildMenu(),
                ],
              ),
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width - 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: _tabList
                              .map((k, v) {
                                return MapEntry(
                                    k,
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _selectedTab = v;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: _selectedTab != v
                                                ? Colors.white
                                                : Colors.deepPurple[50],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 20),
                                          child: Row(
                                            children: [
                                              Icon(
                                                v,
                                                color: Colors.deepPurple[900],
                                              ),
                                              SizedBox(width: 10),
                                              _selectedTab != v
                                                  ? SizedBox.shrink()
                                                  : Text(
                                                      k,
                                                      style: TextStyle(
                                                        color: Colors
                                                            .deepPurple[900],
                                                      ),
                                                    )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ));
                              })
                              .values
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCards() {
    return CardWidget();
  }

  Widget _buildMenu() {
    return GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        childAspectRatio: 1.6,
        children: menuList
            .map((k, v) {
              return MapEntry(
                k,
                Container(

                  decoration: BoxDecoration(
                      color: Colors.deepPurple[50],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          v,
                          size: 35,
                          color: Colors.deepPurple[900],
                        ),
                        Spacer(),
                        Text(
                          k,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.5,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })
            .values
            .toList());
  }
}
