import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/actors_screen/controller/actors_view_brain.dart';

class ActorsScreen extends StatelessWidget {
  const ActorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ActorsViewBrain>(
      init: ActorsViewBrain(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Actors'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 15,
              start: 15,
              end: 15,
            ),
            child: Container(
              height: 150,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w600_and_h900_bestv2${controller.actors?.results[index].profilePath.toString() ?? '/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg'}',
                      height: 150.0,
                      width: 100.0,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '${controller.actors?.results[index].name.toString()}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}
