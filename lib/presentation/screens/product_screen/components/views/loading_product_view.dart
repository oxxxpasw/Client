import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/components/text_loading_placeholder.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:flutter/material.dart';

class LoadingProductView extends StatelessWidget {
  const LoadingProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AutoLeadingButton(),
      ),
      extendBodyBehindAppBar: true,
      body: ShimmerLoading(
        isLoading: true,
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return LoadingContainerPlaceholder(
                  width: constraints.maxWidth,
                  height: constraints.maxWidth,
                  borderRadius: BorderRadius.zero,
                );
              },
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(AppInsets.padding16),
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  Center(
                    child: TextLoadingPlaceholder(
                      width: 300.0,
                      height: AppInsets.padding32,
                    ),
                  ),
                  SizedBox(
                    height: AppInsets.padding16,
                  ),
                  LoadingContainerPlaceholder(
                    width: double.infinity,
                    height: 60.0,
                    borderRadius: BorderRadius.zero,
                  ),
                  SizedBox(
                    height: AppInsets.padding16,
                  ),
                  LoadingContainerPlaceholder(
                    width: double.infinity,
                    height: 60.0,
                    borderRadius: BorderRadius.zero,
                  ),
                  SizedBox(
                    height: AppInsets.padding16,
                  ),
                  LoadingContainerPlaceholder(
                    width: double.infinity,
                    height: 60.0,
                    borderRadius: BorderRadius.zero,
                  ),
                  SizedBox(
                    height: AppInsets.padding16,
                  ),
                  LoadingContainerPlaceholder(
                    width: double.infinity,
                    height: 60.0,
                    borderRadius: BorderRadius.zero,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
