import 'dart:ui';

import 'package:flutter/material.dart';

class Fruits {
	String name;
	String title;
	String description;
	String price;
	String rating;
	String imageUrl;
	Color bgColor;
	
	Fruits(this.name,this.title, this.description, this.price, this.rating,this.imageUrl,this.bgColor);
}

List<Fruits> fruits = []
	..add(Fruits("Avocado","Avocados are an interesting fruit because they are very low in carbohydrate yet high in healthy fats.",
		"The fruit originated in South America, possibly in Mexico or Peru, and it was first referred to in English by the name of “crocodile pear”.\nOne of the best things about the avocado is just how adaptable it is.\nFor instance, you may have heard of ‘avocado toast’, a trendy breakfast at the moment. However, there are many different ways to use avocados – such as making guacamole, avocado ice-cream, chocolate mousses, and many other interesting dishes.\nCold-pressed avocado oil also gives olive oil a run for its money in the ‘healthiest oil’ department; it’s a heat-stable fat that contains various protective nutrients.\nAvocados are extremely nutrient-dense, and they are rich in fiber, protein, vitamins, and minerals – especially potassium."
		,"18.45","4.5","assets/avocado_2.png",Colors.green.shade600))
	..add(Fruits("Apples","Apples are a sweet fleshy fruit that grow around the world.",
		"Believed to originate in Central Asia, there are now hundreds of varieties of apples, ranging from sweet to sour.\n Nutritionally speaking, apples are a relatively high-carbohydrate fruit and their most significant nutrient is vitamin C.\nThey’re a very versatile fruit; while often eaten as a snack, they’re also used in a variety of dessert recipes."
		,"21.90","5.0","assets/apples_2.png",Colors.red.shade600))
	..add(Fruits("Plums","Plums are small and round purple fruit that have origins in China.",
		"Appearance wise, a dark purple skin surrounds the juicy flesh, which can range from yellow-orange to reddish-purple in color.\nPlums can either be eaten fresh or in their dried state, which is called a ‘prune’.\nThe taste of plums differs depending on the variety and degree of ripeness. While ripe plums tend to be sweet, an unripe plum can taste incredibly tart.\nPlums are one of the most polyphenol-rich fruits, and randomized controlled trials suggest they can help protect against bone loss."
		,"13.09","3.0","assets/plums_2.png",Colors.blueGrey.shade600))
	..add(Fruits("Grapes","Grapes are one of the most prevalent types of fruit, and we can find them almost everywhere.",
		"Grapes are very versatile too, and they form the basis of many different wines, juices, jams, and dessert products.\nNot many people know this, but grapes are botanically a kind of berry. Although there are thousands of different grape varieties, they are typically classified as either white (green), red, purple, or black.\nThe health benefits of grapes are purported to come from their high polyphenol content. However, grapes are also one of the highest-sugar fruits.\nAs a result, red wine is often thought of as a health drink since it contains concentrated polyphenols and little sugar."
		,"12.75","4.0","assets/grapes_2.png",Colors.indigo.shade600))
	..add(Fruits("Oranges","Oranges are among the most common fruit in the world.",
		"The orange is a citrus fruit and, surprisingly, it is a hybrid rather than an original species. If you didn’t know about this point, then oranges are actually a hybrid of the pomelo and mandarin.\nOranges have a tough outer peel that encases the soft, juicy center. Generally speaking, the fruit has a sweet and (very slight) sour taste. However, there are hundreds of orange varieties and they can vary between sweet, bitter, and sour.\nThe sweet varieties are generally the edible kind we find in shops and in orange juice.\nOranges are a relatively high-carbohydrate fruit and they provide a decent amount of vitamin C."
		,"19.00","5.0","assets/oranges_2.png",Colors.pink.shade600))
	..add(Fruits("Lemons","If you like sour fruits, then here’s another – the lemon is a yellow citrus fruit native to Asia.",
		"Lemons house a tart soft flesh behind a thick yellow skin, and they are a famous culinary fruit. For one thing, thousands of recipes call for a squeeze of fresh lemon juice.\nLemons also hold value for cleaning uses; the reason for this is their high concentration of citric acid.\nIn addition, there is a wide variety of lemon-based food products, such as lemon cakes, lemon juice, lemon jam, and lemon tea.\nNutritionally speaking, the major compound in lemons is vitamin C. The fruit offers the following vitamins and minerals per standard-sized fruit."
		,"16.09","2.5","assets/lemons_2.png",Colors.blue.shade600));