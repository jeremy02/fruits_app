import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/screens/tabs_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget{
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
    
    PageController _pageController;
    int _page = 0;

    Widget buildBarIcon(
        {
            IconData icon = Icons.home,
            int page = 0,
            String title = "Home"
        }) {
        return Expanded(
            child: InkWell(
                onTap: ()=>_pageController.jumpToPage(page),
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                icon,
                                color: _page == page ? Colors.red:Colors.grey,
                                size: 28,
                            ),
                            Text(
                                title,
                                style: TextStyle(
                                    color: _page == page ? Colors.red:Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                ),
                            ),
                        ],
                    ),
                ),
            )
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: onPageChanged,
                children: <Widget>[
                    HomeScreen(),
                    TabsScreen(title: "Platter",
                        bgColor:Colors.white,
                    ),
                    TabsScreen(title: "My",
                        bgColor:Colors.white,
                    ),
                ],
            ),
            bottomNavigationBar: BottomAppBar(
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                        buildBarIcon(
                            icon: Icons.home,
                            page: 0,
                            title: "Home"
                        ),
                        buildBarIcon(
                            icon: Icons.border_all,
                            page: 1,
                            title: "Platter"
                        ),
                        buildBarIcon(
                            icon: Icons.person,
                            page: 2,
                            title: "My"
                        ),
                    ],
                ),
                color: Theme.of(context).primaryColor,
            ),
        );
    }
  
    void initState(){
        super.initState();
        _pageController = PageController();
    }

    @override
    void dispose() {
        super.dispose();
        _pageController.dispose();
    }

    void onPageChanged(int value) {
        setState(() {
            this._page = value;
        });
    }
    
    void navigationTapped(int page) {
        _pageController.jumpToPage(page);
    }
}