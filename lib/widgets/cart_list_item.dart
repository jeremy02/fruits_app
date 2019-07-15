import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/models/fruits_list.dart';

class CartListItem extends StatelessWidget {
	
	Fruits fruit;
	
	CartListItem({
		Key key,
		@required this.fruit,
	})
		: super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Container(
			constraints: BoxConstraints(
				minHeight: 150,
			),
			child: Card(
				shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0)),
				elevation: 1.0,
			),
		);
	}
}