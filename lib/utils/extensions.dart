extension Iterables<E> on Iterable<E> {
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
      <K, List<E>>{},
      (Map<K, List<E>> map, E element) =>
          map..putIfAbsent(keyFunction(element), () => <E>[]).add(element));
}

extension NumberParsing on String {
  num? tryParseNum() {
    return num.tryParse(this);
  }

  int? tryParseInt() {
    return int.tryParse(this);
  }

  double? tryParseDouble() {
    return double.tryParse(this);
  }
}

extension CapitalizeExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
