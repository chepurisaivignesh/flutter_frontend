import 'package:blackcoffer_app/constants.dart';
import 'package:blackcoffer_app/screens/refine_screen.dart';
import 'package:blackcoffer_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_search_delegate.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                decoration: BoxDecoration(
                  color: MyPalatte.light,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: Icon(
                              Icons.person_2_outlined,
                              size: 54,
                              color: MyPalatte.dark,
                            ),
                            radius: 32,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'User',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'QWERTY123456',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: LinearProgressIndicator(
                                value: 0.2,
                                minHeight: 12,
                                color: Colors.white,
                                backgroundColor: Colors.blueGrey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Available',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.group,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'My Network',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.business_center_outlined,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'Switch to Professional',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.storefront_outlined,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'Switch to Merchant',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'Dating',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_bag,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'Buy-Sell-Rent',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.note_add_sharp,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'Notes',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: MyPalatte.dark,
                ),
                title: Text(
                  'Live Locations',
                  style: TextStyle(
                    color: MyPalatte.dark,
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: MyPalatte.dark,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.subject,
                  size: 32,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, User!',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                    ),
                    Text(
                      ' Banglore, India',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ]),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctxt) => RefineScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.checklist),
                      Text("Refine"),
                    ]),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: ColoredBox(
              color: MyPalatte.light,
              child: TabBar(
                overlayColor: MaterialStatePropertyAll(MyPalatte.light),
                indicatorColor: Colors.white,
                dividerColor: Colors.transparent,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                    icon: Icon(Icons.business_center),
                  ),
                  Tab(
                    icon: Icon(Icons.storefront),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: MyPalatte.light),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                          onTap: () {
                            showSearch(
                                context: context,
                                // delegate to customize the search bar
                                delegate: CustomSearchDelegate());
                          },
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.tune))
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => CustomCard(
                      isProfessional: false,
                      isService: false,
                    ),
                    itemCount: 24,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: MyPalatte.light),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                          onTap: () {
                            showSearch(
                                context: context,
                                // delegate to customize the search bar
                                delegate: CustomSearchDelegate());
                          },
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.tune))
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => CustomCard(
                      isProfessional: true,
                      isService: false,
                    ),
                    itemCount: 24,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: MyPalatte.light),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                          onTap: () {
                            showSearch(
                                context: context,
                                // delegate to customize the search bar
                                delegate: CustomSearchDelegate());
                          },
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.tune))
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => CustomCard(
                      isProfessional: false,
                      isService: true,
                    ),
                    itemCount: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            backgroundColor: Colors.white,
            selectedItemColor: MyPalatte.dark,
            unselectedItemColor: MyPalatte.light,
            items: [
              BottomNavigationBarItem(
                  label: "Explore",
                  icon: Icon(Icons.remove_red_eye_outlined),
                  activeIcon: Icon(Icons.remove_red_eye)),
              BottomNavigationBarItem(
                  label: "Network",
                  icon: Icon(Icons.supervised_user_circle_outlined),
                  activeIcon: Icon(Icons.supervised_user_circle)),
              BottomNavigationBarItem(
                  label: "Chat",
                  icon: Icon(Icons.chat_outlined),
                  activeIcon: Icon(Icons.chat)),
              BottomNavigationBarItem(
                  label: "Contacts",
                  icon: Icon(Icons.contact_page_outlined),
                  activeIcon: Icon(Icons.contact_page)),
              BottomNavigationBarItem(
                  label: "Hashtags",
                  icon: Icon(Icons.bookmark_outline),
                  activeIcon: Icon(Icons.bookmark)),
            ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: MyPalatte.dark,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
