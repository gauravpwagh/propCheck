import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/l10n/labels.dart';
import '../../core/money.dart';
import '../../data/repositories/property_repository.dart';
import '../../domain/engine/engine.dart';
import '../../l10n/gen/app_localizations.dart';
import '../property/property_providers.dart';
import 'home_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final list = ref.watch(propertyListProvider);
    final home = ref.watch(homeControllerProvider);
    final c = ref.read(homeControllerProvider.notifier);
    final selecting = home.selected.isNotEmpty;

    return Scaffold(
      appBar: selecting
          ? AppBar(
              leading: IconButton(
                tooltip: l.commonCancel,
                icon: const Icon(Icons.close),
                onPressed: c.clearSelection,
              ),
              title: Text(l.homeSelected(home.selected.length)),
              actions: [
                TextButton.icon(
                  onPressed: home.selected.length >= 2
                      ? () => context.push(
                          '/compare?ids=${home.selected.join(',')}',
                        )
                      : null,
                  icon: const Icon(Icons.compare_arrows),
                  label: Text(l.homeCompare),
                ),
              ],
            )
          : AppBar(
              title: Text(l.homeTitle),
              actions: [
                IconButton(
                  tooltip: l.homeRisks,
                  icon: const Icon(Icons.shield_outlined),
                  onPressed: () => context.push('/risks'),
                ),
                IconButton(
                  tooltip: l.homeSettings,
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: () => context.push('/settings'),
                ),
              ],
            ),
      body: list.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l.commonError('$e'))),
        data: (items) {
          if (items.isEmpty) return const _EmptyState();
          final shown = c.filterAndSort(items);
          return Column(
            children: [
              _Toolbar(state: home),
              if (shown.isEmpty)
                Expanded(child: Center(child: Text(l.homeNoMatches)))
              else
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 96),
                    itemCount: shown.length,
                    itemBuilder: (context, i) => _PropertyTile(
                      item: shown[i],
                      selected: home.selected.contains(shown[i].property.id),
                      selecting: selecting,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
      floatingActionButton: selecting
          ? null
          : FloatingActionButton.extended(
              onPressed: () => context.push('/wizard'),
              icon: const Icon(Icons.add),
              label: Text(l.homeNewEstimate),
            ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.home_work_outlined,
              size: 64,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              l.homeEmptyTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(l.homeEmptyBody, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

class _Toolbar extends ConsumerStatefulWidget {
  const _Toolbar({required this.state});

  final HomeState state;

  @override
  ConsumerState<_Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends ConsumerState<_Toolbar> {
  late final _search = TextEditingController(text: widget.state.query);

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final c = ref.read(homeControllerProvider.notifier);
    final s = widget.state;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Column(
        children: [
          TextField(
            controller: _search,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: l.homeSearchHint,
              isDense: true,
            ),
            onChanged: c.setQuery,
          ),
          Row(
            children: [
              PopupMenuButton<HomeSort>(
                tooltip: l.homeSort,
                initialValue: s.sort,
                onSelected: c.setSort,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: HomeSort.updated,
                    child: Text(l.homeSortUpdated),
                  ),
                  PopupMenuItem(
                    value: HomeSort.total,
                    child: Text(l.homeSortTotal),
                  ),
                  PopupMenuItem(
                    value: HomeSort.psf,
                    child: Text(l.homeSortPsf),
                  ),
                ],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.sort),
                      const SizedBox(width: 8),
                      Text(switch (s.sort) {
                        HomeSort.updated => l.homeSortUpdated,
                        HomeSort.total => l.homeSortTotal,
                        HomeSort.psf => l.homeSortPsf,
                      }),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Flexible(
                child: FilterChip(
                  label: Text(l.homeShowArchived),
                  selected: s.showArchived,
                  onSelected: c.setShowArchived,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PropertyTile extends ConsumerWidget {
  const _PropertyTile({
    required this.item,
    required this.selected,
    required this.selecting,
  });

  final PropertyListItem item;
  final bool selected;
  final bool selecting;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final p = item.property;
    final cache = item.cache;
    final c = ref.read(homeControllerProvider.notifier);
    final id = p.id!;
    final subtitle = [
      l.homeItemSubtitle(p.input.type, l.statusLabel(p.input.status)),
      ?p.input.locality,
      if (cache != null) l.homeItemPsf(Money.full(cache.allInCarpetPsf)),
      if (cache != null && cache.criticalFlags > 0)
        l.homeFlagCount(cache.criticalFlags),
      if (p.isArchived) l.homeArchived,
    ].join('\n');
    final headline = cache == null
        ? '-'
        : p.mode == EstimateMode.budgetToPrice
        ? l.homeMaxPriceLabel(Money.compactWithSymbol(cache.quotedPrice))
        : Money.compactWithSymbol(cache.total);

    return ListTile(
      isThreeLine: true,
      selected: selected,
      leading: selecting
          ? Checkbox(value: selected, onChanged: (_) => c.toggleSelected(id))
          : CircleAvatar(child: Text(p.input.type.replaceAll('BHK', ''))),
      title: Text(p.name.isEmpty ? p.input.type : p.name),
      subtitle: Text(subtitle),
      trailing: Text(headline, style: Theme.of(context).textTheme.titleMedium),
      onTap: selecting
          ? () => c.toggleSelected(id)
          : () => context.push('/property/$id'),
      onLongPress: () => c.toggleSelected(id),
    );
  }
}
