import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_value_bloc.freezed.dart';
part 'search_value_state.dart';

typedef SearchFunction<T> = String Function(T value);

abstract class SearchValueBloc<T> extends Cubit<SearchValueState<T>> {
  SearchValueBloc(this.items) : super(SearchValueState(items: items));

  List<T> items;

  bool testValue(T value, String text);

  void search(String text) {
    final searchText = text.trim().toLowerCase();
    if (searchText.isEmpty) {
      emit(SearchValueState(items: items));
      return;
    }
    emit(
      SearchValueState(
        items:
            items.where((element) => testValue(element, searchText)).toList(),
        query: text,
      ),
    );
  }

  void setItems(List<T> items) {
    this.items = items;
    search(state.query ?? '');
  }
}

@Injectable(as: SearchValueBloc<City>)
class SearchCityBloc extends SearchValueBloc<City> {
  SearchCityBloc(@factoryParam super.items);

  @override
  bool testValue(City value, String text) =>
      value.name.toLowerCase().contains(text);
}

@Injectable(as: SearchValueBloc<Country>)
class SearchCountryBloc extends SearchValueBloc<Country> {
  SearchCountryBloc(@factoryParam super.items);

  @override
  bool testValue(Country value, String text) =>
      value.name.toLowerCase().contains(text);
}
