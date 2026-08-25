import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutUsHtmlWidget extends StatelessWidget {
  const AboutUsHtmlWidget({
    super.key,
    required this.data,
    this.onUrlPressed,
  });

  final String data;
  final void Function(String? url)? onUrlPressed;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Html(
        data: data,
        style: {
          'body': Style(
            margin: Margins.zero,
            padding: HtmlPaddings.symmetric(horizontal: AppInsets.padding16),
          ),
        },
        onLinkTap: (url, attributes, element) async {
          if (url != null && await canLaunchUrlString(url)) {
            launchUrlString(url);
          }
        },
        extensions: [
          TagExtension(
            tagsToExtend: {'a'},
            builder: (htmlContext) {
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppBorderRadius.medium),
                ),
                child: InkWell(
                  onTap: () =>
                      onUrlPressed?.call(htmlContext.attributes['href']),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: AppInsets.padding16,
                      bottom: AppInsets.padding16,
                      left: AppInsets.padding24,
                      right: AppInsets.padding16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            htmlContext.innerHtml,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        const Icon(CustomICons.chevronBigRight),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
