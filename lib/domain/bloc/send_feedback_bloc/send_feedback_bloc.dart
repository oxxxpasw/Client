import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

part 'send_feedback_state.dart';
part 'send_feedback_bloc.freezed.dart';

@injectable
class SendFeedbackBloc extends SrCubit<SendFeedbackState, SendFeedbackSr> {
  SendFeedbackBloc({
    required this.remoteConfigRepository,
  }) : super(const SendFeedbackState());

  @protected
  final RemoteConfigRepository remoteConfigRepository;

  Future<void> onFeedbackButtonPressed() async {
    try {
      final feedbackUri = remoteConfigRepository.config.feedbackUrl;

      if (feedbackUri != null && await canLaunchUrl(feedbackUri)) {
        final result = await launchUrl(
          feedbackUri,
          mode: LaunchMode.externalApplication,
        );

        if (result) {
          addSr(const SendFeedbackSr.success());
        }
      }
    } catch (e) {
      addError(e);
    }
  }
}
