import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'PassArgumentsScreen.dart';
import 'ScreenArguments.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  		onGenerateRoute:(settings){
			if(settings.name == PassArgumentsScreen.routeName){
				
				final ScreenArguments args = settings.arguments;
				
				return MaterialPageRoute(builder: (context){
					return PassArgumentsScreen(
						title: args.title,
						message:args.message,
					);
				},
				);
			}
		},
		title: 'Navgation with Argments',
		home:HomeScreen(),
    );
  }
}

