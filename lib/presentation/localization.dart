// import 'dart:ui';
//
// import 'package:form_builder_validators/localization/intl/messages.dart'
//     as form_builder_localization_messages;
// import 'package:form_builder_validators/localization/l10n.dart'
//     as form_builder_localization;
// import 'package:multiple_localization/multiple_localization.dart';
//
// class FormBuilderLocalizationDelegate
//     extends form_builder_localization.FormBuilderLocalizationsDelegate {
//   const FormBuilderLocalizationDelegate();
//
//   @override
//   Future<form_builder_localization_messages.FormBuilderLocalizationsImpl> load(
//           Locale locale) =>
//       MultipleLocalizations.load(
//         form_builder_localization_messages
//             .lookupFormBuilderLocalizationsImpl(locale),
//         locale,
//         (_) => super.load(locale),
//       );
// }
//
// class MainAppLocalizationDelegate extends AppLocalizationDelegate {
//   const MainAppLocalizationDelegate();
//
//   @override
//   Future<S> load(Locale locale) => MultipleLocalizations.load(
//         initializeMessages,
//         locale,
//         (locale) => S.load(
//           Locale.fromSubtags(languageCode: locale),
//         ),
//       );
// }
