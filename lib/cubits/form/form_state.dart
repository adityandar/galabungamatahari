part of 'form_cubit.dart';

class FormState extends Equatable {
  final String name;
  final String message;

  const FormState({
    this.name = '',
    this.message = '',
  });

  FormState copyWith({
    String? name,
    String? message,
  }) {
    return FormState(
      name: name ?? this.name,
      message: message ?? this.message,
    );
  }

  @override
  List<Object> get props => [name, message];
}
