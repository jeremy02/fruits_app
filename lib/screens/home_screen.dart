import 'package:flutter/material.dart';

import 'fruits_listing_screen.dart';

class HomeScreen extends StatefulWidget{
	@override
	HomeScreenState createState() => HomeScreenState();
	
}

class HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin<HomeScreen>, SingleTickerProviderStateMixin{
	
	final TextEditingController _searchControl = new TextEditingController();
	
	TabController _tabcontroller;
	
	@override
	void initState(){
		super.initState();
		_tabcontroller = new TabController(
			vsync: this,
			length: 6,
		);
	}

	@override
	dispose() {
		super.dispose();
		_tabcontroller.dispose();
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: PreferredSize(
				child: Row(
					crossAxisAlignment: CrossAxisAlignment.stretch,
					mainAxisSize: MainAxisSize.max,
					children: <Widget>[
						Padding(
							padding: EdgeInsets.only(top: 30.0, left: 4.0, right: 4.0),
							child:IconButton(
								onPressed: ()=> null,
								icon: Icon(
									Icons.list,
									size: 24,
									color: Colors.grey.shade600,
								),
							),
						),
						Expanded(
							child: Padding(
								padding: EdgeInsets.only(top: 30.0, left: 4.0, right: 4.0),
								child: _buildSearchBox (),
							),
						),
						Padding(
							padding: EdgeInsets.only(top: 30.0, left: 4.0, right: 4.0),
							child:IconButton(
								onPressed: ()=> null,
								icon: Icon(
									Icons.shopping_cart,
									size: 24,
									color: Colors.grey.shade600,
								),
							),
						),
					],
				),
				preferredSize:Size(
					MediaQuery.of(context).size.width,
					60.0,
				),
			),
			body: Padding(
				padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						SizedBox(height: 20.0),
						Text(
							"All Fruit",
							style: TextStyle(
								fontSize: 20,
								fontWeight: FontWeight.bold,
							),
						),
						SizedBox(height: 10.0),
						TabBar(
							controller: _tabcontroller,
							indicatorSize: TabBarIndicatorSize.label,
							isScrollable: true,
							indicatorColor: Colors.transparent,
							labelPadding: EdgeInsets.all(4.0),
							indicatorWeight: 1.0,
							indicatorPadding: EdgeInsets.all(0),
							labelColor: Colors.black,
							unselectedLabelColor: Colors.grey.shade400,
							unselectedLabelStyle: TextStyle(
								fontWeight: FontWeight.bold,
								fontSize: 16.0,
								color: Colors.grey.shade400,
							),
							labelStyle: TextStyle(
								fontWeight: FontWeight.bold,
								fontSize: 16,
								color: Colors.black,
							),
							tabs: <Widget>[
								Container(
									margin: EdgeInsets.only(right: 8.0),
									child: Text(
										'Avocado',
									),
								),
								Container(
									margin: EdgeInsets.only(right: 8.0),
									child: Text(
										'Apples',
									),
								),
								Container(
									margin: EdgeInsets.only(right: 8.0),
									child: Text(
										'Plums',
									),
								),
								Container(
									margin: EdgeInsets.only(right: 8.0),
									child: Text(
										'Grapefruits',
									),
								),
								Container(
									margin: EdgeInsets.only(right: 8.0),
									child: Text(
										'Oranges',
									),
								),
								Container(
									margin: EdgeInsets.only(right: 8.0),
									child: Text(
										'Lemons',
									),
								),
							],
						),
						SizedBox(height: 10,),
						Expanded(
							child: TabBarView(
								controller: _tabcontroller,
								children: <Widget>[
									FruitsListingScreen(),
									Center(child:Text('Apples')),
									Center(child:Text('Plums')),
									Center(child:Text('Grapefruits')),
									Center(child:Text('Oranges')),
									Center(child:Text('Lemons')),
								],
							),
						),
					],
				),
			),
		);
	}
	
	Widget _buildSearchBox ()=> Card(
		elevation: 0.0,
		shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
		child: Container(
			decoration: BoxDecoration(
				color: Colors.grey.shade100,
				borderRadius: BorderRadius.all(
					Radius.circular(20.0),
				),
			),
			child: TextField(
				style: TextStyle(
					color: Colors.black,
					fontSize: 15
				),
				decoration: InputDecoration(
					contentPadding: EdgeInsets.all(10.0),
					border: OutlineInputBorder(
						borderRadius: BorderRadius.circular(20.0),
						borderSide: BorderSide(color: Colors.transparent,),
					),
					enabledBorder: OutlineInputBorder(
						borderSide: BorderSide(color: Colors.transparent,),
						borderRadius: BorderRadius.circular(20.0),
					),
					hintText: "",
					prefixIcon: Icon(
						Icons.search,
						color: Colors.grey,
					),
					hintStyle: TextStyle(
						fontSize: 15.0,
						color: Colors.black,
					),
				),
				maxLines: 1,
				controller: _searchControl,
			),
		),
	);
	
	@override
	bool get wantKeepAlive => true;
}

