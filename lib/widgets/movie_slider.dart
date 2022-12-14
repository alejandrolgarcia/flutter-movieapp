import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
    const MovieSlider({ Key? key }) : super(key: key);

  @override
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            height: 250,
            color: Colors.green,
            child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Populares', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                    ),

                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder: ( _, int index) => _MoviePoster()
                        ),
                    )
                ],

            ),
        );
    }
}

class _MoviePoster extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Container(
            width: 130,
            height: 190,
            color: Colors.blue,
            // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: const EdgeInsets.only(left: 20, top: 10, right: 0, bottom: 10),
        );
    }
}