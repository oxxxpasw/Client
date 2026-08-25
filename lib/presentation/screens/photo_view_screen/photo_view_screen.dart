import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';

import 'components/photo_dismiss_widget.dart';

class PhotoViewScreen extends StatefulWidget {
  const PhotoViewScreen({
    super.key,
    required this.images,
    this.initialIndex = 0,
    required this.animation,
  });

  final List<String> images;
  final int initialIndex;
  final Animation<double> animation;

  @override
  State<PhotoViewScreen> createState() => _PhotoViewScreenState();
}

class _PhotoViewScreenState extends State<PhotoViewScreen> {
  late final PageController _pageController;
  late final ValueNotifier<double> _notifier = ValueNotifier(1.0);

  late final ValueNotifier<int> _pageNotifier;

  void onPageChanged(int index) {
    _pageNotifier.value = index + 1;
  }

  bool isPopping = false;

  OverlayEntry? overlayEntry;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: widget.initialIndex,
    );
    _pageNotifier = ValueNotifier(widget.initialIndex + 1);
    _insertOverlay();
  }

  void _insertOverlay() {
    Timer(
      Duration.zero,
      () {
        if (overlayEntry != null) {
          return;
        }
        overlayEntry = OverlayEntry(
          builder: (context) {
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedAppBar(
                    animation: widget.animation,
                    userDragNotifier: _notifier,
                    page: _pageNotifier,
                    pageCount: widget.images.length,
                  ),
                ),
              ],
            );
          },
        );
        Overlay.of(context).insert(overlayEntry!);
      },
    );
  }

  void _reinsertOverlay() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (overlayEntry != null) {
        overlayEntry?.remove();
        overlayEntry = null;
      }
      _insertOverlay();
    });
  }

  @override
  void dispose() {
    overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (_, __) {
        isPopping = true;
        _reinsertOverlay();
        return;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            AnimatedBg(
              animation: widget.animation,
              userDragNotifier: _notifier,
            ),
            PhotoDismiss(
              onDismissed: (_) {
                Navigator.of(context).pop();
              },
              resizeDuration: Duration.zero,
              direction: PhotoDismissDirection.vertical,
              onUpdate: (details) {
                if (isPopping) return;
                _notifier.value = clampDouble(1 - details.progress, 0.0, 1.0);
              },
              key: const Key('ImageDismissibleKey'),
              child: PhotoViewGallery.builder(
                scrollDirection: Axis.horizontal,
                builder: _buildItem,
                itemCount: widget.images.length,
                loadingBuilder: _buildLoading,
                onPageChanged: onPageChanged,
                pageController: _pageController,
                backgroundDecoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final item = widget.images[index];

    return PhotoViewGalleryPageOptions(
      imageProvider: CachedNetworkImageProvider(item),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained,
      maxScale: PhotoViewComputedScale.covered * 4.1,
      heroAttributes: PhotoViewHeroAttributes(
        tag: item,
        transitionOnUserGestures: true,
      ),
    );
  }

  Widget _buildLoading(BuildContext context, ImageChunkEvent? event) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        value: event == null
            ? null
            : event.expectedTotalBytes != null
                ? event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1)
                : null,
      ),
    );
  }
}

class AnimatedBg extends StatelessWidget {
  const AnimatedBg({
    super.key,
    required this.animation,
    required this.userDragNotifier,
  });

  final Animation<double> animation;
  final ValueNotifier<double> userDragNotifier;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([animation, userDragNotifier]),
      builder: (_, __) {
        final color = ColorTween(
          begin: Colors.transparent,
          end: Colors.black,
        ).transform(
          Tween<double>(
            begin: 0.0,
            end: userDragNotifier.value,
          ).evaluate(animation),
        );
        return ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: ColoredBox(
            color: color!,
          ),
        );
      },
    );
  }
}

class AnimatedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AnimatedAppBar({
    super.key,
    required this.animation,
    required this.userDragNotifier,
    required this.page,
    required this.pageCount,
  });

  final Animation<double> animation;
  final ValueNotifier<double> userDragNotifier;
  final ValueNotifier<int> page;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([animation, userDragNotifier]),
      builder: (_, child) {
        final opacity = Tween<double>(
          begin: 0.0,
          end: userDragNotifier.value,
        ).evaluate(animation);
        return Opacity(
          opacity: opacity,
          child: child,
        );
      },
      child: AppBar(
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white,
        title: ListenableBuilder(
            listenable: page,
            builder: (context, _) {
              return Text(
                LocaleKeys.imageViewer_title.tr(
                  namedArgs: {
                    'index': page.value.toString(),
                    'count': pageCount.toString(),
                  },
                ),
                style: const TextStyle(color: Colors.white),
              );
            }),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
