import 'package:chat_bot/app/app.dart';
import 'package:chat_bot/bootstrap.dart';
import 'package:chat_bot/flash_card/cubit/flash_card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> backgroundCallback(Uri? uri) async {
  if (uri?.host == 'refresh_word') {
    final cubit = FlashcardCubit(); // Tạo cubit mới hoặc lấy từ context
    await cubit.fetchRandomWord();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://smbbcjknlyfiqrgakztg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtYmJjamtubHlmaXFyZ2FrenRnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDIzNTQzNTcsImV4cCI6MjA1NzkzMDM1N30.BRHHAMammA8GBYuu6xpbGID3jXtTAPZ5VWkixdf3jjQ',
  );
  await HomeWidget.registerInteractivityCallback(backgroundCallback);

  await bootstrap(() => const App());
}
