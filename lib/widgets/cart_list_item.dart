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
			child: Card(
				shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0)),
				elevation: 1.0,
				child: Padding(
					padding:EdgeInsets.all(10.0),
					child: Row(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Stack(
								alignment: Alignment.topLeft,
								children: <Widget>[
									Image.asset(
										fruit.imageUrl,
										width: MediaQuery.of(context).size.width*0.25,
										fit: BoxFit.contain,
									),
									Container(
										width: MediaQuery.of(context).size.width*0.08,
										height: 16,
										decoration: BoxDecoration(
											color: Colors.redAccent
										),
										child: Center(
											child: Text(
												"Sale",
												style: TextStyle(
													fontSize: 8,
													color: Colors.white,
												),
												textAlign: TextAlign.center,
											),
										)
									),
								],
							),
							SizedBox(width: 4.0,),
							Expanded(
								child: Column(
									children: <Widget>[
										SizedBox(height: 10),
										Text(
											fruit.title,
											maxLines: 3,
											style: TextStyle(
												fontWeight: FontWeight.w600
											),
											softWrap: true,
										),
										SizedBox(height: 10),
										Row(
											mainAxisAlignment: MainAxisAlignment.spaceBetween,
											children: <Widget>[
												Text(
													"\$"+fruit.price,
													maxLines: 1,
													style: TextStyle(
														fontSize: 18.0,
														color: Colors.redAccent,
														fontWeight: FontWeight.bold
													),
													softWrap: true,
												),
												buildAddMinusCartActions(),
											],
										),
										SizedBox(height: 10),
									],
								)
							),
						],
					),
				),
			),
		);
	}

	Widget buildAddMinusCartActions()=> Row(
		children: <Widget>[
			Container(
				height: 24.0,
				width: 24.0,
				decoration: BoxDecoration(
					color: Colors.grey.shade200,
					borderRadius: BorderRadius.circular(4.0),
				),
				child: new IconButton(
					padding: new EdgeInsets.all(0.0),
					color: Colors.grey.shade500,
					icon: new Icon(Icons.add, size: 18.0),
					onPressed: ()=>null,
				)
			),
			Padding(
				padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 12.0),
				child: Text(
					"2",
					style: TextStyle(
						fontWeight: FontWeight.bold,
					),
				),
			),
			Container(
				height: 24.0,
				width: 24.0,
				decoration: BoxDecoration(
					color: Colors.grey.shade200,
					borderRadius: BorderRadius.circular(4.0),
				),
				child: new IconButton(
					padding: new EdgeInsets.all(0.0),
					color: Colors.grey.shade500,
					icon: new Icon(Icons.remove, size: 24.0),
					onPressed: ()=>null,
				)
			),
		],
	);
}