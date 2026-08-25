import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

const String _kEllipsis = '\u2026';
const String _kLineSeparator = '\u2028';

class DescriptionText extends StatefulWidget {
  const DescriptionText(
    this.text, {
    super.key,
    required this.trimCollapsedText,
    required this.trimExpandedText,
    this.maxLines = 3,
  });

  final String text;
  final int maxLines;
  final String trimCollapsedText;
  final String trimExpandedText;

  @override
  State<DescriptionText> createState() => _DescriptionTextState();
}

class _DescriptionTextState extends State<DescriptionText> {
  bool _readMore = true;

  void _onTapLink() {
    setState(() {
      _readMore = !_readMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextSpan link = TextSpan(
      text: _readMore ? widget.trimCollapsedText : widget.trimExpandedText,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).primaryColor,
          ),
      recognizer: TapGestureRecognizer()..onTap = _onTapLink,
    );

    TextSpan _delimiter = TextSpan(
      text: _readMore
          ? widget.trimCollapsedText.isNotEmpty
              ? _kEllipsis
              : ''
          : '',
      recognizer: TapGestureRecognizer()..onTap = _onTapLink,
    );

    final result = LayoutBuilder(
      builder: (context, constraints) {
        assert(constraints.hasBoundedWidth);
        final maxWidth = constraints.maxWidth;
        final text = TextSpan(
          text: widget.text,
          style: Theme.of(context).textTheme.labelMedium,
        );
        TextPainter textPainter = TextPainter(
          text: link,
          maxLines: widget.maxLines,
          ellipsis: _kEllipsis,
          textDirection: Directionality.of(context),
        );

        textPainter.layout(minWidth: 0, maxWidth: maxWidth);
        final linkSize = textPainter.size;

        // Layout and measure delimiter
        textPainter.text = _delimiter;
        textPainter.layout(minWidth: 0, maxWidth: maxWidth);
        final delimiterSize = textPainter.size;

        // Layout and measure text
        textPainter.text = text;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;

        // Get the endIndex of data
        bool linkLongerThanLine = false;
        int endIndex;

        if (linkSize.width < maxWidth) {
          final readMoreSize = delimiterSize.width;
          final pos = textPainter.getPositionForOffset(Offset(
            Directionality.of(context) == ui.TextDirection.rtl
                ? readMoreSize
                : textSize.width - readMoreSize,
            textSize.height,
          ));
          endIndex = textPainter.getOffsetBefore(pos.offset) ?? 0;
        } else {
          var pos = textPainter.getPositionForOffset(
            textSize.bottomLeft(Offset.zero),
          );
          endIndex = pos.offset;
          linkLongerThanLine = true;
        }
        TextSpan textSpan;

        if (textPainter.didExceedMaxLines) {
          textSpan = TextSpan(
            text:
                (_readMore ? widget.text.substring(0, endIndex) : widget.text),
            style: Theme.of(context).textTheme.labelMedium,
            children: <TextSpan>[
              _delimiter,
              TextSpan(text: _kLineSeparator * 2),
              link
            ],
          );
        } else {
          textSpan = TextSpan(
            text: widget.text,
            style: Theme.of(context).textTheme.labelMedium,
          );
        }
        return RichText(
          softWrap: true,
          overflow: TextOverflow.clip,
          text: textSpan,
        );
      },
    );
    return result;
  }
}
