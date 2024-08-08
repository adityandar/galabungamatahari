part of 'home_cubit.dart';

class HomeState extends Equatable {
  final bool isShowForm;

  const HomeState({
    this.isShowForm = false,
  });

  HomeState copyWith({bool? isShowForm}) {
    return HomeState(
      isShowForm: isShowForm ?? this.isShowForm,
    );
  }

  @override
  List<Object> get props => [isShowForm];
}
