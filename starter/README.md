# Session 06 — Digital ID starter overlay

This folder is an **overlay**, not an entire platform-specific Flutter project. Use Flutter installed in Session 02.

## Part 1 — the first screen (no third-party packages)
1. Create your project: `flutter create first_flutter_explorer --empty` (or VS Code → Flutter: New Project → Application).
2. Copy `starter/lib/main.dart` to your project's `lib/main.dart`.
3. Copy `starter/assets/images/student_avatar.png` to your project's `assets/images/student_avatar.png`.
4. Run `flutter pub add material_ui` in your project terminal. This adds the modern Material design package to the `dependencies:` section of `pubspec.yaml`.
5. Open your **generated** `pubspec.yaml`; under its existing `flutter:` key register `assets/images/student_avatar.png`. **Do not paste a second `flutter:` key.** The fragment is an example, not a replacement.
6. Run `flutter pub get`, then `flutter run -d chrome`. Expect an avatar, your name, a subtitle, and a star FloatingActionButton. The FAB is intentionally a no-op.
7. Change the name and try replacing the avatar with your own image. Keep the filename/path consistent.

## Part 2 — guided pub.dev discovery / star-button chime
1. Browse https://pub.dev/packages/audioplayers. Check platforms, setup, current version and README examples.
2. In the project terminal: `flutter pub add audioplayers`. Inspect the newly added dependency in `pubspec.yaml`.
3. Copy `starter/assets/audio/star_chime.wav` to your project's `assets/audio/star_chime.wav` and register this file under the same existing `flutter/assets:` list.
4. The final example is `examples/discovery_profile/main.dart`. Replace `lib/main.dart` with that code **after** completing the asset and package steps.
5. Full stop and re-run if asset or dependency changes are not reflected. In Chrome click/tap the *star FloatingActionButton* (user gesture) to play the sound. The photo remains visual only.

For this short lesson we keep one top-level AudioPlayer for the app lifetime; later lessons can cover lifecycle/disposal in stateful designs. The sound file was generated specifically for this codelab and requires no external download. **The main asset examples require a local Flutter project, not DartPad.**

For Flutter 3.50+, our starter uses `package:material_ui/material_ui.dart`. Older tutorials and optional DartPad examples may use `package:flutter/material.dart` (deprecated but still available). See `docs/FLUTTER_VERSION_NOTE.md` in the website repository; do not mix both imports in the same file.
