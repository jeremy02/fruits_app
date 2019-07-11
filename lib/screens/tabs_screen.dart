import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget{
	
	final String title;
	final Color bgColor;
	
	TabsScreen({
		Key key,
		@required this.title,
		@required this.bgColor,
	})
		: super(key: key);
	
	@override
	TabsScreenState createState() => TabsScreenState();
	
}

class TabsScreenState extends State<TabsScreen>{
	
	@override
	void initState(){
		super.initState();
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
				decoration: BoxDecoration(
					color: widget.bgColor
				),
				child: Center(
					child: Text(
						widget.title,
						style: TextStyle(
							fontSize: 20,
							fontWeight: FontWeight.bold,
						),
					),
				),
			),
		);
	}
	
	@override
	bool get wantKeepAlive => true;
}