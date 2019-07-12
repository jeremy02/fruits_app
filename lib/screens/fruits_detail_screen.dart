import 'package:flutter/material.dart';

class FruitsDetailScreen extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				actions: <Widget>[
					IconButton(
						icon: Icon(
							Icons.shopping_cart,
							color: Colors.white,
						),
					),
				],
			),
			body: Container(
				width: double.infinity,
				height: double.infinity,
				decoration: BoxDecoration(
					color: Colors.black
				),
			),
		);
	}
}

