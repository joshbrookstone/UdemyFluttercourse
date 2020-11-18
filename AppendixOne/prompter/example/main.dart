// import 'package:prompter_jdb/src/terminal.dart';

// import 'package:prompter_jdb/src/prompter.dart';

import '../lib/src/option.dart';
import '../lib/src/prompter.dart';

void main() {
  final options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f')
  ];

  final prompter = new Prompter();
  final userPicks = prompter.ask('What color do you like?', options);
  print(userPicks);
}
