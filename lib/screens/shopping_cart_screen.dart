import 'package:flutter/material.dart';
import 'package:fruits_app/models/fruits_list.dart';
import 'package:fruits_app/widgets/cart_list_item.dart';
import 'package:fruits_app/widgets/fruits_list_item.dart';

class ShoppingCartScreen extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: Colors.white,
				elevation: 0.0,
				iconTheme: IconThemeData(
					color: Colors.grey.shade600,
				),
				actions: <Widget>[
					IconButton(
						onPressed: ()=>null,
						icon: Icon(
							Icons.border_all
						),
					),
				],
			),
			body:Padding(
				padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 16.0),
				child: Column(
					children: <Widget>[
						Expanded(
							child:ListView.builder(
								primary: false,
								shrinkWrap: true,
								scrollDirection: Axis.vertical,
								itemCount: fruits == null ? 0 :fruits.length,
								itemBuilder: (BuildContext context, int index) {
									Fruits fruit = fruits[index];
									return CartListItem(
										fruit: Fruits(
											fruits[index].name,
											fruits[index].title,
											fruits[index].description,
											fruits[index].price,
											fruits[index].rating,
											fruits[index].imageUrl,
											fruits[index].bgColor
										),
									);
								}
							),
						),
						SizedBox(height: 10.0),
						Row(
							mainAxisAlignment: MainAxisAlignment.end,
							crossAxisAlignment: CrossAxisAlignment.baseline,
							textBaseline: TextBaseline.alphabetic,
							children: <Widget>[
								Text(
									"A total of: ",
									style: TextStyle(
										fontWeight: FontWeight.bold,
										fontSize: 18,
										color: Colors.grey,
									),
								),
								Text(
									"\$97.02",
									style: TextStyle(
										fontWeight: FontWeight.bold,
										fontSize: 28,
										color: Colors.redAccent,
									),
								),
							],
						),
						SizedBox(height: 16.0),
						Center(
							child: RaisedButton(
								onPressed: ()=>null,
								child: Text(
									"Settlement",
									style: TextStyle(
										fontWeight: FontWeight.bold,
										fontSize: 18,
										color: Colors.white,
									),
								),
								textColor: Colors.white,
								color: Colors.green,
								padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 60.0),
								shape: RoundedRectangleBorder(
									borderRadius: BorderRadius.circular(24.0),
								),
							),
						),
						SizedBox(height: 32.0),
					],
				),
			),
		);
	}
}