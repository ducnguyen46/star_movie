import 'package:flutter/material.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:star_movie/share/utils/utils.dart';

class SearchMovieAppBar extends StatefulWidget {
  const SearchMovieAppBar({
    super.key,
    required this.onSearch,
  });

  final Function(String) onSearch;

  @override
  State<SearchMovieAppBar> createState() => _SearchMovieAppBarState();
}

class _SearchMovieAppBarState extends State<SearchMovieAppBar> {
  late TextEditingController _searchInputController;
  var _isClearIconShown = false;

  @override
  void initState() {
    super.initState();
    _searchInputController = TextEditingController();
    _searchInputController.addListener(_showClearIconListener);
  }

  @override
  void dispose() {
    _searchInputController.removeListener(_showClearIconListener);
    _searchInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      leading: const BackButton(),
      title: Center(
        child: TextFormField(
          controller: _searchInputController,
          autofocus: true,
          autocorrect: false,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          cursorRadius: const Radius.circular(Dimens.d8),
          cursorHeight: AppTextStyle.s16Regular.height,
          style: AppTextStyle.s16Regular,
          decoration: InputDecoration(
            hintText: 'Search movies...'.hardCode,
            hintStyle: AppTextStyle.s16Regular,
            border: InputBorder.none,
            suffix: _isClearIconShown
                ? IconButton(
                    onPressed: () {
                      _searchInputController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )
                : null,
          ),
          onFieldSubmitted: (value) {
            widget.onSearch(value);
          },
        ),
      ),
    );
  }

  void _showClearIconListener() {
    setState(() {
      _searchInputController.text.isNotEmpty
          ? _isClearIconShown = true
          : _isClearIconShown = false;
    });
  }
}
