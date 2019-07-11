import 'package:flutter/material.dart';
import 'package:fruits_app/models/fruits_list.dart';

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
					child: ListView.builder(
						primary: false,
						shrinkWrap: true,
						scrollDirection: Axis.horizontal,
						itemCount: fruits == null ? 0 :fruits.length,
						itemBuilder: (BuildContext context, int index) {
							Fruits fruit = fruits[index];
							return Padding(
								padding: EdgeInsets.only(right: 10.0),
								child: Container(
									width: MediaQuery.of(context).size.width/1.5,
									decoration: BoxDecoration(color: Colors.grey),
								),
							);
						}
					),
				),
			],
		);
	}
	
	@override
	bool get wantKeepAlive => true;
}

