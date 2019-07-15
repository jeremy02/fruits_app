import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits_app/models/fruits_list.dart';
import 'package:fruits_app/widgets/rating_display.dart';

class FruitsDetailScreen extends StatefulWidget {
	
	Fruits fruit;
	
	FruitsDetailScreen({
		Key key,
		@required this.fruit,
	})
		: super(key: key);
	
	@override
	_FruitsDetailScreenState createState() => _FruitsDetailScreenState();
}

class _FruitsDetailScreenState extends State<FruitsDetailScreen> {
	
	// To determine if SliverAppBar is expanded or not.
	ScrollController _scrollController;
	bool isAppBarExpanded = false;
	
	@override
	void initState() {
		super.initState();
		
		// change status bar color
		SystemChrome.setSystemUIOverlayStyle(
			SystemUiOverlayStyle(
				statusBarColor: Colors.transparent,
				statusBarBrightness: Brightness.dark,
			)
		);
		
		_scrollController = ScrollController()
			..addListener(() => setState(() {
				print('Scroll view Listener is called offset ${_scrollController.offset}');
			}));
	}
	
	@override
	void dispose() {
		super.dispose();
		_scrollController.dispose();
	}
	
	bool get _changeTitleVisibility {
		return _scrollController.hasClients
			&& _scrollController.offset > (200-kToolbarHeight);
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: widget.fruit.bgColor,
			body:NestedScrollView(
				controller: _scrollController,
				headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
					return <Widget>[
						SliverAppBar(
							title: Text(
								_changeTitleVisibility ? widget.fruit.name:"",
								style: TextStyle(
									color: _changeTitleVisibility ? Colors.white : Colors.transparent,
								),
							),
							pinned: true,
							backgroundColor: widget.fruit.bgColor,
							expandedHeight: MediaQuery.of(context).size.height/2.5,
							flexibleSpace: FlexibleSpaceBar(
								background: Center(
									child: Image.asset(
										'${widget.fruit.imageUrl}',
										fit: BoxFit.contain,
										width: MediaQuery.of(context).size.width/2,
									),
								)
							),
							iconTheme: IconThemeData(
								color: Colors.white
							),
							actionsIconTheme: IconThemeData(
								color: Colors.white
							),
							actions: <Widget>[
								IconButton(
									icon: Icon(
										Icons.shopping_cart,
										color: Colors.white,
									),
									onPressed: (){
										null;
									},
								),
							],
						),
					];
				},
				body: Container(
					decoration: BoxDecoration(
						color: Colors.white,
						borderRadius: BorderRadius.only(topRight: Radius.circular(16.0),topLeft: Radius.circular(16.0)),
					),
					child: SingleChildScrollView(
						child: Padding(
							padding: EdgeInsets.only(top:32.0,right: 16.0,left: 16.0),
							child: Column(
								children: <Widget>[
									Text(
										"${widget.fruit.title}",
										style: TextStyle(
											fontWeight: FontWeight.bold,
											fontSize: 18,
										),
									),
									SizedBox(height: 20,),
									Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: <Widget>[
											IconTheme(
												data: IconThemeData(
													color: Colors.amber,
													size: 24,
												),
												child: RatingDisplay(
													rating: double.parse(widget.fruit.rating),
												),
											),
											Text(
												"${widget.fruit.rating}",
												style: TextStyle(
													color: Colors.grey,
												),
											),
										],
									),
									SizedBox(height: 30,),
									Text(
										"${widget.fruit.description}",
										style: TextStyle(
											color: Colors.grey,
											fontSize: 16.0,
										),
									),
								],
							),
						),
					),
				),
			),
			bottomNavigationBar: BottomAppBar(
				elevation: 0.0,
				child: Padding(
					padding:EdgeInsets.only(left: 16.0),
					child: Row(
						mainAxisAlignment: MainAxisAlignment.start,
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Expanded(
								child: Text(
									"\$${widget.fruit.price}",
									style: TextStyle(
										fontSize: 22,
										color: Colors.red,
										fontWeight: FontWeight.bold,
									),
								),
							),
							Expanded(
								child: Container(
									width: MediaQuery.of(context).size.width,
									height: 60,
									child: RaisedButton(
										textColor: Colors.white,
										color: widget.fruit.bgColor,
										child: Text(
											"Buy Now",
											style: TextStyle(
												fontSize: 20,
												color: Colors.white,
											),
										),
										onPressed: () {
											null;
										},
										shape: RoundedRectangleBorder(
											borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0)),
										)
									),
								),
							),
						],
					),
				),
			),
		);
	}
}