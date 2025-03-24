import 'package:chat_bot/flash_card/flash_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_widget/home_widget.dart';
const String appGroupId = '<YOUR APP GROUP>';
const String iOSWidgetName = 'NewsWidgets';
const String androidWidgetName = 'NewsWidget' ; 
class FlashcardPage extends StatelessWidget {
  const FlashcardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FlashcardCubit(),
      child: const FlashcardView(),
    );
  }
}

class FlashcardView extends StatefulWidget {
  const FlashcardView({super.key});

  @override
  State<FlashcardView> createState() => _FlashcardViewState();
}

class _FlashcardViewState extends State<FlashcardView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      HomeWidget.setAppGroupId(appGroupId);
      context.read<FlashcardCubit>().fetchRandomWord();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flashcard AI')),
      body: Center(
        child: BlocBuilder<FlashcardCubit, Flashcard?>(
          builder: (context, flashcard) {
            if (flashcard == null) {
              return ElevatedButton(
                onPressed: () => context.read<FlashcardCubit>().fetchRandomWord(),
                child: const Text(
                  'Lấy từ mới',
                  style: TextStyle(color: Colors.red),
                ),
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  flashcard.word,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  flashcard.meaning,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  'Ví dụ: ${flashcard.example}',
                  style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => context.read<FlashcardCubit>().fetchRandomWord(),
                  child: const Text(
                    'Lấy từ mới',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
