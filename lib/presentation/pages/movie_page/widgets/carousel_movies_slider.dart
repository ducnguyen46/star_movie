import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:star_movie/domain/entities/entities.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/constants/constants.dart';
import 'package:star_movie/share/resources/resources.dart';

class CarouselMoviesSlider extends StatelessWidget {
  const CarouselMoviesSlider({
    super.key,
    required this.movies,
    this.onPressed,
  });

  final List<Movie> movies;
  final void Function(int movieId)? onPressed;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: movies.length,
      options: CarouselOptions(
        aspectRatio: AppConstants.backdropRatio / 0.8,
        viewportFraction: 0.8,
        initialPage: 0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
      ),
      itemBuilder: (context, int itemIndex, int pageViewIndex) {
        return Container(
          margin: const EdgeInsets.all(Dimens.d6),
          child: GestureDetector(
            onTap: () =>
                onPressed != null ? onPressed!(movies[itemIndex].id) : null,
            child: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(Dimens.d6)),
                child: Stack(
                  children: <Widget>[
                    CachedImageCommon(
                      imageUrl:
                          '${ImageConfigConstant.backdropImgW780}${movies[itemIndex].backdropPath}',
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: Dimens.d10,
                          horizontal: Dimens.d20,
                        ),
                        child: Text(
                          movies.elementAt(itemIndex).title,
                          style: AppTextStyle.s16SemiBold.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
