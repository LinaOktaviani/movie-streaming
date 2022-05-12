import 'package:flutter/material.dart';
import 'package:movie_streaming/theme.dart';
import 'package:movie_streaming/widgets/movie_card.dart';
import 'package:movie_streaming/widgets/movie_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildTitle() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Movies',
                  style: blackTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: black,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Watch much easier',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              width: 55,
              height: 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/button_search.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buildCarousel() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MovieCard(
                title: 'My Name',
                genre: 'Action, Thriller',
                imageUrl: 'assets/myname.png',
                rating: 5,
              ),
              MovieCard(
                title: 'Extracuriculler',
                genre: 'Teen, Crime',
                imageUrl: 'assets/extra.png',
                rating: 3,
              ),
              MovieCard(
                title: 'Joker',
                genre: 'Crime, Drama, Thriller',
                imageUrl: 'assets/joker.png',
                rating: 3,
              ),
            ],
          ),
        ),
      );
    }

    Widget buildList() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MovieTile(
              title: 'Zootopia',
              genre: 'Animasi, action, adventure',
              imageUrl: 'assets/zootopia.png',
              rating: 5,
            ),
            MovieTile(
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              imageUrl: 'assets/image_movie4.png',
              rating: 4,
            ),
            MovieTile(
              title: 'Inside Out',
              genre: 'Animasi',
              imageUrl: 'assets/insideout.png',
              rating: 3,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          buildTitle(),
          buildCarousel(),
          buildList(),
        ],
      ),
    );
  }
}
