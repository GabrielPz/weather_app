import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());
      try {
        await dotenv.load(fileName: ".env");
        String apiKey = dotenv.env['API_KEY'] ?? 'Variavel não definida';

        Position position = await Geolocator.getCurrentPosition();
        WeatherFactory wf =
            WeatherFactory(apiKey, language: Language.PORTUGUESE_BRAZIL);

        Weather weather = await wf.currentWeatherByLocation(
            position.latitude, position.longitude);
        emit(WeatherBlocSuccess(weather));
      } catch (e) {
        print(e);
        emit(WeatherBlocFailure());
      }
    });
  }
}
