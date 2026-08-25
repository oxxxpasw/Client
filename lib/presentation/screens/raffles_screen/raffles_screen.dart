import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/raffles_service.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

/// Розыгрыши среди гостей: список активных + кнопка «Участвовать».
@RoutePage()
class RafflesScreen extends StatefulWidget {
  const RafflesScreen({super.key});

  @override
  State<RafflesScreen> createState() => _RafflesScreenState();
}

class _RafflesScreenState extends State<RafflesScreen> {
  late final RafflesService _service = RafflesService(
    appEnvironment: GetIt.I.get<AppEnvironment>(),
    authRepository: GetIt.I.get<AuthRepository>(),
  );

  List<Raffle> _raffles = [];
  final Set<String> _joined = {};
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      _raffles = await _service.getRaffles();
    } catch (_) {
      _error = 'Не удалось загрузить розыгрыши';
    }
    if (mounted) {
      setState(() => _loading = false);
    }
  }

  Future<void> _join(Raffle raffle) async {
    try {
      final isNew = await _service.joinRaffle(raffle.id);
      _joined.add(raffle.id);
      if (mounted) {
        setState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              isNew
                  ? 'Вы участвуете в розыгрыше!'
                  : 'Вы уже участвуете в этом розыгрыше',
            ),
          ),
        );
      }
      _load();
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Не удалось подать заявку')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    return Scaffold(
      backgroundColor: colors.surfaceContainer,
      appBar: CustomAppBar(
        title: const Text('Розыгрыши'),
        leadingBackgroundColor: colors.surface,
        backgroundColor: colors.surfaceContainer,
      ),
      body: SafeArea(
        child: _buildBody(colors),
      ),
    );
  }

  Widget _buildBody(ColorScheme colors) {
    if (_loading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_error!),
              const SizedBox(height: AppInsets.padding16),
              FilledButton(onPressed: _load, child: const Text('Повторить')),
            ],
          ),
        ),
      );
    }
    if (_raffles.isEmpty) {
      return const Center(
        child: Text('Сейчас нет активных розыгрышей'),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.all(AppInsets.padding16),
      itemCount: _raffles.length,
      separatorBuilder: (_, __) => const SizedBox(height: AppInsets.padding12),
      itemBuilder: (context, index) => _raffleCard(colors, _raffles[index]),
    );
  }

  Widget _raffleCard(ColorScheme colors, Raffle raffle) {
    final joined = _joined.contains(raffle.id);
    return Container(
      padding: const EdgeInsets.all(AppInsets.padding16),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppBorderRadius.large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            raffle.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: AppInsets.padding8),
          if (raffle.prize.isNotEmpty)
            Text(
              'Приз: ${raffle.prize}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          const SizedBox(height: AppInsets.padding4),
          Text(
            'Участников: ${raffle.participants}',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: colors.onSurfaceVariant),
          ),
          const SizedBox(height: AppInsets.padding12),
          FilledButton(
            onPressed: joined ? null : () => _join(raffle),
            child: Text(joined ? 'Вы участвуете' : 'Участвовать'),
          ),
        ],
      ),
    );
  }
}
