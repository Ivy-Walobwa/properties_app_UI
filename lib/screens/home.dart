import 'package:flutter/material.dart';
import '../widgets/custom_triangle_tab_indicator.dart';
import '../constants.dart';
import 'screens.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          color: Colors.white,
          child: TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.grey,
            labelColor: kBlueColor,
            labelPadding: EdgeInsets.all(10),
            indicator: CustomTriangleTabIndicator(color: kBlueColor),
            tabs: [
              Tab(icon: Icon(Icons.home,),),
              Tab(icon: Icon(Icons.search,),),
              Tab(icon: Icon(Icons.bookmark,),),
              Tab(icon: Icon(Icons.chat,),),
              Tab(icon: Icon(Icons.settings,),),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
           HomeScreen(),
            SearchScreen(),
            BookmarksScreen(),
            ChatsScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}



