import 'package:bloc/bloc.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

part 'report_problem_state.dart';
part 'report_problem_bloc.freezed.dart';

@injectable
class ReportProblemBloc extends Cubit<ReportProblemState> {
  ReportProblemBloc({
    required this.remoteConfigRepository,
  }) : super(const ReportProblemState());

  @protected
  final RemoteConfigRepository remoteConfigRepository;

  Future<void> makePhoneCall() async {
    final url = Uri(
      scheme: 'tel',
      path: remoteConfigRepository.config.technicalSupportPhone,
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
