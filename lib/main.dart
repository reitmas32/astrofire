import 'package:astofire/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() => runApp(
      const ProviderScope(
        child: AstrofireApp(),
      ),
    );
