import 'questions.dart';

class QuestionBank {
  int _questionNumber = 0;

  List<Question> _questionList = [
    Question('An ostrich\'s eye is bigger than its brain.', true),
    Question(
        'About five percent of the body of a jellyfish is solid matter, the rest is water.',
        true),
    Question('Germany drinks the most beer in the world per person.', false),
    Question('The sum of all the numbers on a roulette wheel is 666.', true),
    Question('Polar bears’ skin is black.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question('The name of Batman\’s butler is Albert.', false),
    Question('Elvis Presley had a twin brother.', true),
    Question('The Great Wall Of China is visible from the moon.', false),
    Question('Google was originally called \"Backrub\".', true),
    Question('Fortune cookies were invented in China', false),
    Question(
        'It\’s illegal in Georgia to eat fried chicken with a knife and fork.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
    }
  }

  String questionListText() {
    return _questionList[_questionNumber].questionText;
  }

  bool questionListAnswer() {
    return _questionList[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber > _questionList.length - 2) {
      return true;
    } else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
