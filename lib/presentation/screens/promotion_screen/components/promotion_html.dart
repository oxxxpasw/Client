import 'package:sosedifedi/domain/bloc/promotion_details_bloc/promotion_details_bloc.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

class PromotionHtml extends StatelessWidget {
  const PromotionHtml({
    super.key,
    required this.html,
  });

  final String html;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Html(
        data: html,
        style: {
          'body': Style(
            margin: Margins.zero,
            padding: HtmlPaddings.symmetric(horizontal: AppInsets.padding16),
          ),
        },
        onLinkTap: (url, attributes, element) => url != null
            ? context.read<PromotionDetailsBloc>().openLink(url)
            : null,
      ),
    );
  }
}
