import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/property_repository.dart';

part 'home_controller.g.dart';

enum HomeSort { updated, total, psf }

class HomeState {
  const HomeState({
    this.query = '',
    this.sort = HomeSort.updated,
    this.showArchived = false,
    this.selected = const [],
  });

  final String query;
  final HomeSort sort;
  final bool showArchived;

  /// Property ids picked for compare, in tap order (max 3).
  final List<int> selected;

  HomeState copyWith({
    String? query,
    HomeSort? sort,
    bool? showArchived,
    List<int>? selected,
  }) => HomeState(
    query: query ?? this.query,
    sort: sort ?? this.sort,
    showArchived: showArchived ?? this.showArchived,
    selected: selected ?? this.selected,
  );
}

const maxCompare = 3;

@riverpod
class HomeController extends _$HomeController {
  @override
  HomeState build() => const HomeState();

  void setQuery(String q) => state = state.copyWith(query: q);

  void setSort(HomeSort s) => state = state.copyWith(sort: s);

  void setShowArchived(bool v) => state = state.copyWith(showArchived: v);

  void toggleSelected(int id) {
    final s = [...state.selected];
    if (s.contains(id)) {
      s.remove(id);
    } else if (s.length < maxCompare) {
      s.add(id);
    }
    state = state.copyWith(selected: s);
  }

  void clearSelection() => state = state.copyWith(selected: const []);

  /// Applies search, archive filter and sort to the stored list.
  List<PropertyListItem> filterAndSort(List<PropertyListItem> items) {
    final q = state.query.trim().toLowerCase();
    final out = items.where((i) {
      final p = i.property;
      if (p.isArchived && !state.showArchived) return false;
      if (q.isEmpty) return true;
      return p.name.toLowerCase().contains(q) ||
          (p.input.locality ?? '').toLowerCase().contains(q);
    }).toList();
    int byNum(int? a, int? b) => (a ?? 1 << 62).compareTo(b ?? 1 << 62);
    switch (state.sort) {
      case HomeSort.updated:
        out.sort(
          (a, b) => b.property.updatedAt.compareTo(a.property.updatedAt),
        );
      case HomeSort.total:
        out.sort((a, b) => byNum(a.cache?.total, b.cache?.total));
      case HomeSort.psf:
        out.sort(
          (a, b) => byNum(a.cache?.allInCarpetPsf, b.cache?.allInCarpetPsf),
        );
    }
    return out;
  }
}
