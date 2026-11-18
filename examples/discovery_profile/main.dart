import 'package:material_ui/material_ui.dart';
import 'package:audioplayers/audioplayers.dart';

// One audio player for this tiny teaching app (no UI state needed).
final AudioPlayer _starPlayer = AudioPlayer();

Future<void> _playStarSound() async {
  await _starPlayer.stop();
  await _starPlayer.play(AssetSource('audio/star_chime.wav'));
}

void main() => runApp(const DigitalIdApp());

class DigitalIdApp extends StatelessWidget {
  const DigitalIdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF0F6FC),
        appBar: AppBar(title: const Text('My Digital ID')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/images/student_avatar.png'),
              ),
              const SizedBox(height: 16),
              const Text('Your Name',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              const Text('PDB2 · Junior Flutter Developer'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _playStarSound, // Press the star to play the chime.
          child: const Icon(Icons.star),
        ),
      ),
    );
  }
}
