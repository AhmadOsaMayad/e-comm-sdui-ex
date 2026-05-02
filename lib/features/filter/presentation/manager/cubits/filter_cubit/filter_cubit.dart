import 'package:e_comm_s_d_u_i_ex/enums/form_action_type.dart';
import 'package:e_comm_s_d_u_i_ex/models/form_action.dart';
import 'package:e_comm_s_d_u_i_ex/secret_notes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterState.initial());

  void handleAction(FormAction action) {
    switch (action.type) {
      case FormActionType.update:
        _handleUpdate(action);
        break;
      case FormActionType.submit:
        _handleSubmit();
        break;
      case FormActionType.reset:
        emit(FilterState.initial());
        break;
    }
  }

  void _handleUpdate(FormAction action) {
    switch (action.field) {
      case 'priceMin':
        emit(state.copyWith(minPrice: (action.value as num).toDouble()));
        break;
      case 'priceMax':
        emit(state.copyWith(maxPrice: (action.value as num).toDouble()));
        break;
      case 'isMen':
        emit(state.copyWith(men: action.value as bool));
        break;
      case 'isWomen':
        emit(state.copyWith(women: action.value as bool));
        break;
      case 'colors':
        final color = action.value as String;
        final next = List<String>.from(state.colors);
        if (next.contains(color)) {
          next.remove(color);
        } else {
          next.add(color);
        }
        emit(state.copyWith(colors: next));
        break;
    }
  }

  void _handleSubmit() {
    emit(state.copyWith(isSubmitting: true));

    kFilterCubitSecretNote;

    emit(state.copyWith(isSubmitting: false));
  }
}
