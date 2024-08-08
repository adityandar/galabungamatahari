import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'form_state.dart';

class FormCubit extends Cubit<FormState> {
  FormCubit() : super(const FormState());

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setMessage(String message) {
    emit(state.copyWith(message: message));
  }
}
