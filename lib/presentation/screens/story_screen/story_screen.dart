import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/domain/bloc/story_bloc/story_bloc.dart';
import 'package:sosedifedi/domain/models/story/story.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

typedef StoryShownCallback = void Function(PromotionShortInfo story);

@RoutePage()
class StoryScreen extends StatefulWidget {
  const StoryScreen({
    super.key,
    required this.index,
    required this.stories,
    this.onStoryShown,
  });

  final int index;
  final List<PromotionShortInfo> stories;
  final StoryShownCallback? onStoryShown;

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    for (int index = 0; index < widget.stories.length; index++) {
      final storyData = widget.stories[index];
      children.add(
        StoryWrapper(
          index: index,
          story: storyData,
          onStoryShown: widget.onStoryShown,
          onPrevious: () {
            if (_controller.page != null && _controller.page! >= 1) {
              _controller.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          },
          onNext: () {
            if (_controller.page != null &&
                _controller.page! < widget.stories.length - 1) {
              _controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else if (_controller.page != null) {
              context.router.pop();
            }
          },
        ),
      );
    }

    return ListenableProvider<PageController>.value(
      value: _controller,
      child: PageView(
        controller: _controller,
        children: children,
      ),
    );
  }
}

class StoryWrapper extends StatefulWidget {
  const StoryWrapper({
    super.key,
    required this.story,
    required this.index,
    this.onStoryShown,
    this.onNext,
    this.onPrevious,
  });

  final PromotionShortInfo story;
  final StoryShownCallback? onStoryShown;
  final VoidCallback? onNext;
  final VoidCallback? onPrevious;
  final int index;

  @override
  State<StoryWrapper> createState() => _StoryWrapperState();
}

class _StoryWrapperState extends State<StoryWrapper>
    with AutomaticKeepAliveClientMixin {
  // int page = 0;
  // PageController? pageController;
  //
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   pageController?.removeListener(_listener);
  //   pageController = context.read<PageController>();
  //   pageController!.addListener(_listener);
  // }
  //
  // _listener() {
  //   final pageController = this.pageController!;
  //   if (pageController.page != null &&
  //       pageController.page! == pageController.page!.toInt()) {
  //     page = pageController.page!.toInt();
  //     print(pageController.page);
  //     updateKeepAlive();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<StoryBloc>(
      create: (context) => GetIt.I.get()..loadData(widget.story.id),
      child: StoryView(
        info: widget.story,
        onStoryShown: widget.onStoryShown,
        onNext: widget.onNext,
        onPrevious: widget.onPrevious,
        index: widget.index,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  // @override
  // bool get wantKeepAlive {
  //   final prev = max(page - 1, 0);
  //   final next = page + 1;
  //   return !(prev > widget.index || next < widget.index);
  // }
  //
  // @override
  // void dispose() {
  //   pageController?.removeListener(_listener);
  //   super.dispose();
  // }
}

class StoryView extends StatelessWidget {
  const StoryView({
    super.key,
    required this.info,
    required this.index,
    this.onStoryShown,
    this.onNext,
    this.onPrevious,
  });

  final PromotionShortInfo info;
  final StoryShownCallback? onStoryShown;
  final VoidCallback? onNext;
  final VoidCallback? onPrevious;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.velocity.pixelsPerSecond.dy > 0.0) {
          context.router.pop();
        }
      },
      onTapUp: (details) {
        final width = MediaQuery.of(context).size.width;
        final percent = details.localPosition.dx / width;
        if (percent < 0.3) {
          context.read<StoryBloc>().previous();
        }
        if (percent > 0.7) {
          context.read<StoryBloc>().next();
        }
      },
      //Обработчик нужен для того, чтобы onTapUp не срабатывал
      //при длительном нажатии.
      onLongPress: () {},
      child: SrBlocBuilder<StoryBloc, StoryState, StorySr>(
        onSR: (context, sr) => sr.when(
          error: (error) =>
              Messenger.showMessage(context: context, message: error),
          nextStory: () {
            onNext?.call();
            return null;
          },
          previousStory: () {
            onPrevious?.call();
            return null;
          },
        ),
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          if (state.status == StoryStatus.ready) {
            onStoryShown?.call(info);
            return StoryContent(
              story: state.story!,
              index: index,
            );
          }

          return LoadingStory(backgroundImageUrl: info.title.imageUrl);
        },
      ),
    );
  }
}

class StoryContent extends StatefulWidget {
  const StoryContent({
    super.key,
    required this.index,
    required this.story,
  });

  final StoryData story;
  final int index;

  @override
  State<StoryContent> createState() => _StoryContentState();
}

class _StoryContentState extends State<StoryContent>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  PageController? pageController;
  double previousPage = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _controller.addListener(() {
      if (_controller.isCompleted) {
        context.read<StoryBloc>().next();
      }
    });
    _controller.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    pageController?.removeListener(_pageListener);
    pageController = context.read<PageController>();
    pageController!.addListener(_pageListener);
  }

  _pageListener() {
    if (pageController!.page == previousPage) {
      return;
    }

    if (pageController!.page != widget.index && _controller.isAnimating) {
      return _controller.stop(canceled: false);
    }
    if (pageController!.page == widget.index && !_controller.isAnimating) {
      if (_controller.isCompleted) {
        _controller.reset();
      }
      _controller.forward();
    }
    previousPage = pageController!.page ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoryBloc, StoryState>(
      listenWhen: (previous, current) => previous.current != current.current,
      listener: (context, state) {
        if (state.current != null) {
          _controller.reset();
          _controller.forward();
        }
      },
      child: Listener(
        onPointerDown: (_) {
          if (_controller.isAnimating) {
            _controller.stop(canceled: false);
          }
        },
        onPointerCancel: (_) {
          if (!_controller.isAnimating) {
            _controller.forward();
          }
        },
        onPointerUp: (_) {
          if (!_controller.isAnimating) {
            _controller.forward();
          }
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              BlocBuilder<StoryBloc, StoryState>(
                builder: (context, state) {
                  if (state.current == null) {
                    return const SizedBox.shrink();
                  }
                  return StoryItem(story: state.current!);
                },
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(AppInsets.padding16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        StoryProgressIndicator(
                          controller: _controller,
                        ),
                        const SizedBox(
                          height: AppInsets.padding4,
                        ),
                        const AutoLeadingButton(
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    pageController?.removeListener(_pageListener);
    _controller.dispose();
    super.dispose();
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story,
  });

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: story.imageUrl != null 
          ? DecorationImage(
              image: NetworkImage(story.imageUrl!),
              fit: BoxFit.cover,
            )
          : (story.image.isNotEmpty 
              ? DecorationImage(
                  image: MemoryImage(story.image),
                  fit: BoxFit.cover,
                )
              : null),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Html.fromElement(
              documentElement: story.html,
              style: {
                'body': Style(
                  margin: Margins.zero,
                  padding: HtmlPaddings.all(AppInsets.padding16),
                )
              },
            ),
          ),
        ),
      ),
    );
  }
}

class StoryProgressIndicator extends StatefulWidget {
  const StoryProgressIndicator({
    super.key,
    required this.controller,
  });

  final AnimationController controller;

  @override
  State<StoryProgressIndicator> createState() => _StoryProgressIndicatorState();
}

class _StoryProgressIndicatorState extends State<StoryProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController get controller => widget.controller;

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryBloc, StoryState>(
      builder: (context, state) {
        assert(state.current != null);
        final current = state.current!;
        final story = state.story!;
        final selectedIndex = story.stories.indexOf(current);

        final children = <Widget>[];

        for (int index = 0; index < story.stories.length; index++) {
          if (index < selectedIndex) {
            children.add(
              StoryLine(
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          } else if (index == selectedIndex) {
            children.add(item());
          } else {
            children.add(
              const StoryLine(),
            );
          }
        }

        return SeparatedRow(
          separator: const SizedBox(
            width: AppInsets.padding4,
          ),
          children: children.map((e) => Expanded(child: e)).toList(),
        );
      },
    );
  }

  Widget item() {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return LinearGradient(
          stops: [controller.value, controller.value],
          colors: <Color>[Theme.of(context).colorScheme.primary, Colors.white],
        ).createShader(bounds);
      },
      child: const StoryLine(),
    );
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listener);
    super.dispose();
  }
}

class StoryLine extends StatelessWidget {
  const StoryLine({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 5.0,
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: color ?? Colors.white,
      ),
    );
  }
}

class LoadingStory extends StatelessWidget {
  const LoadingStory({super.key, this.backgroundImageUrl});

  final String? backgroundImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [
          AutoLeadingButton(),
        ],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: Theme.of(context).appBarTheme.iconTheme!.copyWith(
              color: Colors.white,
            ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: backgroundImageUrl != null
            ? BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(backgroundImageUrl!),
                ),
              )
            : null,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const SafeArea(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
