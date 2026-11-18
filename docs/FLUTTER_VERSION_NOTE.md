# Flutter imports — current and older code

**For the Session 06 local project (Flutter 3.50+):**

```sh
flutter pub add material_ui
```

```dart
import 'package:material_ui/material_ui.dart';
```

**In older Flutter books, tutorials, and some DartPad examples:**

```dart
import 'package:flutter/material.dart';
```

The SDK Material import is **deprecated in Flutter 3.50, but not removed**. You might still see it and it still runs during the transition. DartPad has not universally adopted the standalone package, so our **optional DartPad Gists** retain the older import. Don't add both Material libraries to the same Dart file; they are distinct library types.

For the local Digital ID and star-chime examples, use the new standalone import. The package dependency is recorded automatically under `dependencies:` in `pubspec.yaml` when you run `flutter pub add material_ui`.

Official source: https://docs.flutter.dev/release/breaking-changes/material-ui-and-cupertino-ui
