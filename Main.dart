import "dart:io";

class Quiz {
  String? question;
  double? answer;
  Quiz(String question, double answer) {
    this.question = question;
    this.answer = answer;
  }
}

double prompt(String prompt) {
  print("$prompt");
  double answer = double.parse(stdin.readLineSync()!);
  return answer;
}

void main() {
  int c = 0;
  print("How many number of questions do you want to ask? ");
  List<Quiz> q = [
    Quiz("3 + 5", 8.0),
    Quiz("10 - 7", 3.0),
    Quiz("100 * 9", 900.0),
  ];
  for (Quiz i in q) {
    double answer = prompt(i.question!);
    if (answer == i.answer) {
      print("Correct Answer! $answer");
      c++;
    } else {
      print("Incorrect Answer! Correct answer is : ${i.answer}");
    }
  }
  print("You have scored ${c / q.length * 100}");
}
