import 'package:flutter/material.dart';
import 'package:fruits_app/models/fruits_list.dart';
import 'package:fruits_app/widgets/fruits_list_item.dart';

class FruitsListingScreen extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		return ListView(
			children: <Widget>[
				Container(
					height: MediaQuery.of(context).size.height/2,
					child: ListView.builder(
						primary: false,
						shrinkWrap: true,
						scrollDirection: Axis.horizontal,
						itemCount: fruits == null ? 0 :fruits.length,
						itemBuilder: (BuildContext context, int index) {
							Fruits fruit = fruits[index];
							return Padding(
								padding: EdgeInsets.only(right: 10.0),
								child: FruitsListItem(
									name:fruit.name,
									title: fruit.title,
									description: fruit.description,
									price: fruit.price,
									rating: fruit.rating,
									imageUrl: fruit.imageUrl,
									bgColor: fruit.bgColor,
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