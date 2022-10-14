import 'package:flutter/material.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/model/tv_shows_response.dart';

class TVShowsBuilder extends StatelessWidget {
  TVShowsResponse? response;

  TVShowsBuilder({required this.response});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w600_and_h900_bestv2${response?.results![index].posterPath.toString() ?? '/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg'}',
                  height: 150.0,
                  width: 100.0,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${response?.results![index].name.toString()}',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('${response?.results![index].voteAverage.toString()}'),
                    Text(
                        '${response?.results![index].firstAirDate.toString()}'),
                    Expanded(
                      child: Text(
                        '${response?.results![index].overview.toString()}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      itemCount: 20,
    );
  }
}
