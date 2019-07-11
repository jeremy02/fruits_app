import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FruitsOnSaleListItem extends StatefulWidget {
	
	String name;
	String title;
	String description;
	String price;
	String rating;
	String imageUrl;
	Color bgColor;
	
	FruitsOnSaleListItem({
		Key key,
		@required this.name,
		@required this.title,
		@required this.description,
		@required this.price,
		@required this.rating,
		@required this.imageUrl,
		@required this.bgColor,
	})
		: super(key: key);
	
	@override
	_FruitsOnSaleListItemState createState() => _FruitsOnSaleListItemState();
}

class _FruitsOnSaleListItemState extends State<FruitsOnSaleListItem> {
	@override
	Widget build(BuildContext context) {
		return Container(
			width: MediaQuery.of(context).size.width/3.2,
			height: MediaQuery.of(context).size.width/3.0,
			child: Stack(
				children: [
					Container(
						margin: EdgeInsets.only(top: 6.0),
						height: MediaQuery.of(context).size.height/5,
						decoration: BoxDecoration(
							color: Colors.tealAccent,
							border: Border.all(
								color: Colors.transparent,
								width: 0.0
							),
							borderRadius: BorderRadius.circular(12.0),
						),
						child: Center(
							child: Column(
								mainAxisAlignment: MainAxisAlignment.center,
								children: <Widget>[
									Image.asset(
										"${widget.imageUrl}",
										fit: BoxFit.cover,
										width: MediaQuery.of(context).size.width/5,
										height: MediaQuery.of(context).size.height/12,
									),
									SizedBox(height: 4,),
									Text(
										"\$${widget.price}",
										style: TextStyle(
											color: Colors.white,
											fontSize: 15,
											fontWeight: FontWeight.bold,
										),
									),
								],
							),
						),
					),
					Positioned(
						top: 0.0,
						left: 8.0,
						child: Container(
							width: 24,
							height: 30,
							decoration: BoxDecoration(
								color: Colors.red
							),
							child: Center(
								child: Text(
									"${widget.rating}\%",
									style: TextStyle(
										fontSize: 8.0,
										color: Colors.white,
										fontWeight: FontWeight.bold
									),
									maxLines: 1,
								),
							),
						),
					),
				],
			),
		);
	}
}