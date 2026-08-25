import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/promotions_bloc/promotions_bloc.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/story_widget.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

class HomeStoriesRow extends StatelessWidget {
  const HomeStoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<PromotionsBloc, PromotionsState, PromotionsSr>(
      onSR: (context, sr) => sr.when(
        error: (error) =>
            Messenger.showMessage(context: context, message: error),
      ),
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.stories != current.stories,
      builder: (context, state) {
        final stories = state.stories;
        if (stories.isEmpty) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: const EdgeInsets.only(top: AppInsets.padding8),
          child: SizedBox(
            height: AppInsets.padding128,
            width: double.infinity,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (BuildContext context, int index) =>
                  BlocBuilder<PromotionsBloc, PromotionsState>(
                buildWhen: (previous, current) =>
                    previous.viewedStoriesIDs != current.viewedStoriesIDs,
                builder: (context, state) {
                  return StoryWidget(
                    promotion: stories[index],
                    isViewed:
                        state.viewedStoriesIDs.contains(stories[index].id),
                    onPressed: () {
                      context.router.push(
                        StoryRoute(
                          index: index,
                          stories: stories,
                          onStoryShown: (story) {
                            context.read<PromotionsBloc>().viewStory(story);
                          },
                        ),
                      );
                    },
                  );
                },
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: AppInsets.padding16,
              ),
            ),
          ),
        );
      },
    );
  }
}
