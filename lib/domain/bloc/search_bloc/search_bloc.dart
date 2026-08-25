import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

typedef SearchEmitter = Emitter<SearchState>;

@injectable
class SearchBloc extends SrBloc<SearchEvent, SearchState, SearchSr> {
  SearchBloc({
    required this.productsRepository,
  }) : super(const SearchState.initial()) {
    on<_OnSearch>(
      _onSearch,
      transformer: droppable(),
    );
  }

  @protected
  AssortmentRepository productsRepository;

  Future<void> _onSearch(_OnSearch event, SearchEmitter emit) async {
    try {
      if (event.value.isEmpty) {
        emit(const SearchState.initial());
        return;
      }
      final productsResponse = await productsRepository.getProductGroups();
      if (productsResponse.hasError) {
        addSr(SearchSr.error(ErrorMessages.getMessage(productsResponse.error)));
        addError(productsResponse.error);
        return;
      }
      final query = event.value.trim().toLowerCase();
      emit(
        SearchState.ready(
          result: productsResponse.result
              .expand<Group>((element) => element.subGroups ?? [])
              .where((element) => element.name.toLowerCase().contains(query))
              .toList(),
        ),
      );
    } catch (e, stack) {
      addError(e, stack);
      addSr(
        SearchSr.error(
          ErrorMessages.getMessage(
            CommonResponseError.undefinedError(e),
          ),
        ),
      );
    }
  }
}
