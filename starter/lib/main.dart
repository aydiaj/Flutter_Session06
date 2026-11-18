import 'package:material_ui/material_ui.dart';

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
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/images/student_avatar.png'),
              ),
              SizedBox(height: 16),
              Text('Your Name',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 6),
              Text('PDB2 · Junior Flutter Developer'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, // Connect this to the sound in Step 07.
          child: const Icon(Icons.star),
        ),
      ),
    );
  }
}
