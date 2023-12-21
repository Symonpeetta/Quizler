import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
     Question('The Indian elephant is larger than the African elephant', false),
     Question('Dogs can understand up to 250 hand gestures', true),
     Question('A group of crocodiles are called shrewdness', false),
     Question('The iPod touch had cellphone capabilities', false),
     Question('Apes cannot laugh', false),
     Question('Mushrooms need sunlight to grow', false),
     Question('Strawberries are not actually berries', true),
     Question('The USA grows the most maize', true),
     Question('Bananas are available in colors other than yellow', true),
     Question('Cinderella was the first Disney princess', false),
     Question('Walt Disney holds the record for the most Oscars', true),
     Question('Canada has the most lakes in the world', true),
     Question('Vietnamese is an official language in Canada', false),
     Question('The Tesla Roadster was the first car to be launched to space',true ),
     Question('The Pacific Ocean is bigger than the moon', true)
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer (){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber == _questionBank.length - 1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }
}

// input more question and do some abraction with encapsulation