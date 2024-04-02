import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      automaticallyImplyLeading: false,
      pinned: true,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BackButton(
            color: Theme.of(context).colorScheme.primary,
          ),
          Expanded(
            child: SizedBox(
              height: 36.0,
              width: double.infinity,
              child: CupertinoTextField(
                controller: _searchInputController,
                keyboardType: TextInputType.text,
                placeholder: 'Search movies...'.hardCode,
                placeholderStyle: const TextStyle(
                  color: Color(0xffC4C6CC),
                  fontSize: 14.0,
                ),
                prefix: const Padding(
                  padding: EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xffC4C6CC),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0xffF0F1F5),
                ),
                onSubmitted: (value) {
                  widget.onSearch(value);
                },
              ),
            ),
          ),
        ],
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
