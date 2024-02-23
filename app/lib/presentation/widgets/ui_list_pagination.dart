import 'package:app/domain/usecases/get_feeds_usecase.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_bloc.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_event.dart';
import 'package:app/presentation/blocs/get_feeds/get_feeds_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class UIListPagination<T> extends StatefulWidget {
  const UIListPagination({
    super.key,
    required this.pagingController,
  });

  final PagingController<int, T> pagingController;

  @override
  State<UIListPagination> createState() => _UIListPaginationState();
}

class _UIListPaginationState extends State<UIListPagination> {
  static const int _pageSize = 10;

  @override
  void initState() {
    super.initState();
    widget.pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      context.read<GetFeedsBloc>().add(GetFeedsPagination(
          params: GetFeedParams(page: pageKey, limit: _pageSize)));

      context.read<GetFeedsBloc>().stream.listen((state) {
        if (state is GetFeedsSuccess) {
          final isLastPage = state.feeds.length < _pageSize;
          if (isLastPage) {
            widget.pagingController.appendLastPage(state.feeds);
          } else {
            final nextPageKey = pageKey + 1;
            widget.pagingController.appendPage(state.feeds, nextPageKey);
          }
        }
      });
    } catch (error) {
      widget.pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
