import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:flutter/material.dart';

import 'promotion_html.dart';

class UnknownPromotionView extends StatelessWidget {
  const UnknownPromotionView({
    super.key,
    required this.promotion,
  });

  final UnknownPromotion promotion;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PromotionHtml(
        html: promotion.htmlContent!,
      ),
    );
  }
}
