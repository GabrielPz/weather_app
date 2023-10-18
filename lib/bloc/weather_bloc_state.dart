part of 'weather_bloc_bloc.dart';

@immutable
sealed class WeatherBlocState {
  const WeatherBlocState();

  @override
  List<Object> get props => [];
}

final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlocSuccess extends WeatherBlocState {
  final Weather weather;
  const WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}

final class WeatherBlocFailure extends WeatherBlocState {}

final class WeatherBlocLoading extends WeatherBlocState {}
