import 'package:flutter/material.dart';

class FruitsListingScreen extends StatefulWidget{
	@override
	FruitsListingScreenState createState() => FruitsListingScreenState();
	
}

class FruitsListingScreenState extends State<FruitsListingScreen>{
	
	@override
	void initState() {
		super.initState();
	}
	
	@override
	dispose() {
		super.dispose();
	}
	
	@override
	Widget build(BuildContext context) {
		return ListView(
			children: <Widget>[
				Container(
					width: double.infinity,
					height: MediaQuery.of(context).size.height/2.4,
					decoration: BoxDecoration(
						color: Colors.redAccent
					),
				),
			],
		);
	}
	
	@override
	bool get wantKeepAlive => true;
}

