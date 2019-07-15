import 'package:flutter/material.dart';

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
				padding: EdgeInsets.all(16.0),
				child: Column(
					children: <Widget>[
						Expanded(
							child:Container(
							
							),
						),
						SizedBox(height: 10.0),
						Row(
							mainAxisAlignment: MainAxisAlignment.end,
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