import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:star_movie/presentation/blocs/movie_detail_cubit/movie_detail_cubit.dart';
import 'package:star_movie/presentation/pages/movie_detail/widgets/movie_detail_cast_card.dart';
import 'package:star_movie/presentation/widgets/widgets.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:star_movie/share/utils/utils.dart';

@RoutePage()
class MovieCastsPage extends StatelessWidget {
  const MovieCastsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBarCommon(
        title: Text('Casts'.hardCode),
      ),
      body: BlocBuilder<MovieDetailCubit, MovieDetailState>(
        builder: (context, state) {
          switch (state.status) {
            case MovieDetailStatus.error:
              return Center(
                child: Text(
                  state.errorState?.errorMessages ?? 'Error here'.hardCode,
                ),
              );
            case MovieDetailStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              final casts = state.movieDetail!.credit.casts;
              return Expanded(
                child: ListView.separated(
                  itemCount: casts.length,
                  padding: const EdgeInsets.all(Dimens.d16),
                  itemBuilder: (context, index) {
                    return MovieDetailCastCard(cast: casts[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const Gap(Dimens.d16);
                  },
                ),
              );
          }
        },
      ),
    );
  }
}
