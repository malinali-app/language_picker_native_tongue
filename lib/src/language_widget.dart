import 'package:flutter/material.dart';
import 'package:languages_dart/languages_dart.dart';

class LanguageWidget extends StatelessWidget {
  final Language language;
  const LanguageWidget(this.language, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(language.name.isEmpty && language.nameEn.isEmpty
            ? ''
            : language.name.isEmpty
                ? language.nameEn.substring(0, 1).toUpperCase()
                : language.name.substring(0, 1).toUpperCase()),
      ),
      title: Text(language.name),
      subtitle: Text(language.nameEn),
    );
  }
}
