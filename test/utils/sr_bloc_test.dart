import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_mixin.dart';
import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart' as test;

@isTest
void srBlocTest<B extends SingleResultMixin<State, SR>, State, SR>(
  String description, {
  FutureOr<void> Function()? setUp,
  required B Function() build,
  State Function()? seed,
  Function(B bloc)? act,
  Duration? wait,
  int skip = 0,
  int skipSr = 0,
  dynamic Function()? expect,
  dynamic Function()? expectSr,
  Function(B bloc)? verify,
  dynamic Function()? errors,
  FutureOr<void> Function()? tearDown,
  dynamic tags,
}) {
  test.test(
    description,
    () async {
      await testBlocSr<B, State, SR>(
        setUp: setUp,
        build: build,
        seed: seed,
        act: act,
        wait: wait,
        skip: skip,
        skipSr: skipSr,
        expect: expect,
        expectSr: expectSr,
        verify: verify,
        errors: errors,
        tearDown: tearDown,
      );
    },
    tags: tags,
  );
}

/// Internal [blocTest] runner which is only visible for testing.
/// This should never be used directly -- please use [blocTest] instead.
@visibleForTesting
Future<void> testBlocSr<B extends SingleResultMixin<State, SR>, State, SR>({
  FutureOr<void> Function()? setUp,
  required B Function() build,
  State Function()? seed,
  Function(B bloc)? act,
  Duration? wait,
  int skip = 0,
  int skipSr = 0,
  dynamic Function()? expect,
  dynamic Function()? expectSr,
  Function(B bloc)? verify,
  dynamic Function()? errors,
  FutureOr<void> Function()? tearDown,
}) async {
  var shallowEquality = false;
  var srShallowEquality = false;
  final unhandledErrors = <Object>[];
  final localBlocObserver =
      // ignore: deprecated_member_use
      BlocOverrides.current?.blocObserver ?? Bloc.observer;
  final testObserver = _TestBlocObserver(
    localBlocObserver,
    unhandledErrors.add,
  );
  Bloc.observer = testObserver;

  await runZonedGuarded(
    () async {
      await setUp?.call();
      final states = <State>[];
      final sr = <SR>[];
      final bloc = build();
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
      if (seed != null) bloc.emit(seed());
      final subscription = bloc.stream.skip(skip).listen(states.add);
      final srSubscription = bloc.singleResults.skip(skipSr).listen(sr.add);
      try {
        await act?.call(bloc);
      } catch (error) {
        if (errors == null) rethrow;
        unhandledErrors.add(error);
      }
      if (wait != null) await Future<void>.delayed(wait);
      await Future<void>.delayed(Duration.zero);
      await bloc.close();
      if (expect != null && expectSr != null) {
        final dynamic expected = expect();
        final dynamic expectedSr = expectSr();
        shallowEquality = '$states' == '$expected';
        srShallowEquality = '$sr' == '$expectedSr';
        try {
          test.expect([states, sr], test.wrapMatcher([expected, expectedSr]));
        } on test.TestFailure catch (e) {
          if (shallowEquality ||
              srShallowEquality ||
              expected is! List<State> ||
              expected is! List<SR>) rethrow;
          final diff = _diff(expected: expected, actual: states);
          final srDiff = _diff(expected: expectedSr, actual: sr);
          final message = '${e.message}\n$diff\n$srDiff';
          // ignore: only_throw_errors
          throw test.TestFailure(message);
        }
      } else if (expect != null) {
        final dynamic expected = expect();
        shallowEquality = '$states' == '$expected';
        try {
          test.expect(states, test.wrapMatcher(expected));
        } on test.TestFailure catch (e) {
          if (shallowEquality || expected is! List<State>) rethrow;
          final diff = _diff(expected: expected, actual: states);
          final message = '${e.message}\n$diff';
          // ignore: only_throw_errors
          throw test.TestFailure(message);
        }
      } else if (expectSr != null) {
        final dynamic expectedSr = expectSr();
        srShallowEquality = '$sr' == '$expectedSr';
        try {
          test.expect(sr, test.wrapMatcher(expectedSr));
        } on test.TestFailure catch (e) {
          if (srShallowEquality || expectedSr is! List<SR>) rethrow;
          final diff = _diff(expected: expectedSr, actual: sr);
          final message = '${e.message}\n$diff';
          // ignore: only_throw_errors
          throw test.TestFailure(message);
        }
      }
      await subscription.cancel();
      await srSubscription.cancel();
      await verify?.call(bloc);
      await tearDown?.call();
    },
    (Object error, _) {
      if (shallowEquality && error is test.TestFailure) {
        // ignore: only_throw_errors
        throw test.TestFailure(
          '''${error.message}
WARNING: Please ensure state instances extend Equatable, override == and hashCode, or implement Comparable.
Alternatively, consider using Matchers in the expect of the blocTest rather than concrete state instances.\n''',
        );
      }
      if (errors == null || !unhandledErrors.contains(error)) {
        // ignore: only_throw_errors
        throw error;
      }
    },
  );
  if (errors != null) test.expect(unhandledErrors, test.wrapMatcher(errors()));
}

class _TestBlocObserver extends BlocObserver {
  _TestBlocObserver(this._localObserver, this._onError);

  final BlocObserver _localObserver;
  final void Function(Object error) _onError;

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _localObserver.onError(bloc, error, stackTrace);
    _onError(error);
    super.onError(bloc, error, stackTrace);
  }
}

String _diff({required dynamic expected, required dynamic actual}) {
  final buffer = StringBuffer();
  final differences = diff(expected.toString(), actual.toString());
  buffer
    ..writeln('${"=" * 4} diff ${"=" * 40}')
    ..writeln('')
    ..writeln(differences.toPrettyString())
    ..writeln('')
    ..writeln('${"=" * 4} end diff ${"=" * 36}');
  return buffer.toString();
}

extension on List<Diff> {
  String toPrettyString() {
    String identical(String str) => '\u001b[90m$str\u001B[0m';
    String deletion(String str) => '\u001b[31m[-$str-]\u001B[0m';
    String insertion(String str) => '\u001b[32m{+$str+}\u001B[0m';

    final buffer = StringBuffer();
    for (final difference in this) {
      switch (difference.operation) {
        case DIFF_EQUAL:
          buffer.write(identical(difference.text));
          break;
        case DIFF_DELETE:
          buffer.write(deletion(difference.text));
          break;
        case DIFF_INSERT:
          buffer.write(insertion(difference.text));
          break;
      }
    }
    return buffer.toString();
  }
}
