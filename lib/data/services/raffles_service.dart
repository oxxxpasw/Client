import 'package:dio/dio.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/presentation/app_environment.dart';

class Raffle {
  Raffle({
    required this.id,
    required this.title,
    required this.prize,
    required this.startsAt,
    required this.endsAt,
    required this.participants,
  });

  factory Raffle.fromJson(Map<String, dynamic> json) => Raffle(
        id: json['id'] as String? ?? '',
        title: json['title'] as String? ?? '',
        prize: json['prize'] as String? ?? '',
        startsAt: json['starts_at'] as String?,
        endsAt: json['ends_at'] as String?,
        participants: json['participants'] as int? ?? 0,
      );

  final String id;
  final String title;
  final String prize;
  final String? startsAt;
  final String? endsAt;
  final int participants;
}

/// Розыгрыши среди гостей: GET /v1/raffles, POST /v1/raffles/{id}/join.
class RafflesService {
  RafflesService({
    required this.appEnvironment,
    required this.authRepository,
  });

  final AppEnvironment appEnvironment;
  final AuthRepository authRepository;

  Dio? _dio;

  Dio _client() {
    return _dio ??= Dio(
      BaseOptions(
        baseUrl: appEnvironment.apiEndpoint,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 15),
        contentType: 'application/json',
      ),
    );
  }

  Future<String?> _token() => authRepository.token;

  Future<List<Raffle>> getRaffles() async {
    final response = await _client().get('v1/raffles');
    final list = (response.data['raffles'] as List?) ?? [];
    return list
        .map((e) => Raffle.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Возвращает true если заявка принята, false если уже участвует.
  Future<bool> joinRaffle(String raffleId) async {
    final token = await _token();
    final response = await _client().post(
      'v1/raffles/$raffleId/join',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return response.data['already'] != true;
  }
}
