import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/view_models/cubit/states.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(InitialState());

  static NewsCubit get(context) => BlocProvider.of(context);
}