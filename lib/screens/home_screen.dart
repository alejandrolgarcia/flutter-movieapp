import 'package:flutter/material.dart';
import 'package:flutter_movies/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
    
    const HomeScreen({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(

            appBar: AppBar(
                title: const Text('Movies & Series'),
                elevation: 0,
                actions: [
                    IconButton(
                        icon: const Icon(Icons.search_outlined),
                        onPressed: (){}, 
                    )
                ],
            ),

            body: SingleChildScrollView(
                child: Column(
                    children: const [
                        CardSwiper(),
                        MovieSlider(),
                    ]
                )
            )
        );
    }
}