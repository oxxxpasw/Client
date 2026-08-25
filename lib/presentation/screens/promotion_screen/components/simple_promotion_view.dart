import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:flutter/material.dart';

import 'promotion_html.dart';

class SimplePromotionView extends StatelessWidget {
  const SimplePromotionView({
    super.key,
    required this.promotion,
  });

  final SimplePromotion promotion;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PromotionHtml(
        html: promotion.htmlContent!,
      ),
    );
  }
}
