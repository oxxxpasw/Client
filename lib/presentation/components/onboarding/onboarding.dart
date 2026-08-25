import 'package:flutter/material.dart';

typedef BodyBuilder = Widget Function(
    BuildContext context, int index, VoidCallback next);

///Базовый виджет для онбординга.
///При вызове [next] на последней странице вызывается [onEnd].
///Если [lastPageTimeout] не равно [null], то  через [lastPageTimeout]
///нахождения на последней странице также вызывается [onEnd].
class Onboarding extends StatefulWidget {
  const Onboarding({
    super.key,
    required this.bodyBuilder,
    required this.itemCount,
    this.onEnd,
    this.lastPageTimeout = const Duration(seconds: 3),
  });

  final BodyBuilder bodyBuilder;

  final int itemCount;

  final VoidCallback? onEnd;

  final Duration? lastPageTimeout;

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var page = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: widget.bodyBuilder(
        context,
        page,
        () {
          if (page >= widget.itemCount - 1) {
            widget.onEnd?.call();
            return;
          }
          _incrementPage();
        },
      ),
    );
  }

  void _incrementPage() {
    setState(() {
      page++;
      if (page == widget.itemCount - 1 && widget.lastPageTimeout != null) {
        Future.delayed(widget.lastPageTimeout!, () {
          if (mounted) {
            widget.onEnd?.call();
          }
        });
      }
    });
  }
}
