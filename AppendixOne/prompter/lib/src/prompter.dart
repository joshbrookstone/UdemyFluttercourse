import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  ask(String prompt, List<Option> options) {
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    final input = _terminal.collectInput();
    try {
      return options[int.parse(input)].value;
    } catch (err) {
      print('$input not a valid option. please pick a valid option');
      return ask(prompt, options);
    }
  }
}
