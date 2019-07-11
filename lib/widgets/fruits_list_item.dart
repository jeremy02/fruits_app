import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FruitsListItem extends StatefulWidget {
	
	String name;
	String title;
	String description;
	String price;
	String rating;
	String imageUrl;
	Color bgColor;
	
	FruitsListItem({
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
	_FruitsListItemState createState() => _FruitsListItemState();
}

class _FruitsListItemState extends State<FruitsListItem> {
	@override
	Widget build(BuildContext context) {
		return Container(
			height: MediaQuery.of(context).size.height,
			width: MediaQuery.of(context).size.width / 1.2,
			child: Card(
				shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(16.0)),
				color: widget.bgColor,
				elevation: 3.0,
				child: Padding(
					padding: EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Container(
								width: MediaQuery.of(context).size.width/2,
								height: MediaQuery.of(context).size.height/5,
								decoration: BoxDecoration(
									color: widget.bgColor,
								),
								child: Image.asset(
									"${widget.imageUrl}",
									fit: BoxFit.cover,
								),
							),
							SizedBox(height: 10.0,),
							Text(
								"\$ ${widget.price}",
								style: TextStyle(
									color: Colors.white,
									fontSize: 20,
									fontWeight: FontWeight.bold,
								),
							),
							SizedBox(height: 10.0,),
							Text(
								"${widget.title}",
								style: TextStyle(
									color: Colors.white,
									fontSize: 16,
								),
								maxLines: 3,
								overflow: TextOverflow.ellipsis,
							),
							SizedBox(height: 12.0,),
							RaisedButton(
								padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 16.0),
								textColor: Colors.white,
								color: Colors.tealAccent.shade400,
								child: Text(
									"Add to cart",
									style: TextStyle(
										fontSize: 16,
									),
								),
								onPressed: () {},
								shape: RoundedRectangleBorder(
									borderRadius: new BorderRadius.circular(30.0),
								)
							),
						],
					)
				),
			),
		);
	}
}