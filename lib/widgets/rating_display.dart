import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingDisplay extends StatelessWidget {
	final double rating;
	
	RatingDisplay({
		Key key,
		this.rating = 0,
	})
	: assert(rating != null),
		super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Row(
			mainAxisSize: MainAxisSize.min,
			children: List.generate(5, (index) {
				Icon icon;
				if (index >= rating) {
					icon = new Icon(
						Icons.star_border
					);
				}
				else if (index > rating - 1 && index < rating) {
					icon = new Icon(
						Icons.star_half
					);
				} else {
					icon = new Icon(
						Icons.star
					);
				}
				
				return icon;
			}),
		);
	}
}