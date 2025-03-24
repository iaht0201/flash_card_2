import 'package:bloc/bloc.dart';
import 'package:chat_bot/flash_card/model/flashcard.dart';
import 'package:home_widget/home_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FlashcardCubit extends Cubit<Flashcard?> {
  FlashcardCubit() : super(null);

  final _supabase = Supabase.instance.client;

  Future<void> fetchRandomWord() async {
    final response = await _supabase.rpc('get_random_flashcard').select();

    if (response.isEmpty) {
      emit(null);
      return;
    }

    final flashcard = Flashcard.fromJson(response.first);
    emit(flashcard);
    await updateHomeWidget(flashcard);
  }

  Future<void> updateHomeWidget(Flashcard flashcard) async {
    try {
      await HomeWidget.saveWidgetData<String>('word', flashcard.word);
      await HomeWidget.saveWidgetData<String>('meaning', flashcard.meaning);
      await HomeWidget.updateWidget(name: 'MyHomeWidget', iOSName: 'MyHomeWidget');
      print('HomeWidget updated successfully!');
    } catch (e) {
      print('Error updating HomeWidget: $e');
    }
  }
}
