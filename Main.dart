import "dart:io";

String prompt(String prompt) {
  print("$prompt : ");
  String ans = stdin.readLineSync()!;
  return ans;
}

void main() {
  String col = prompt("Color");
  String noun = prompt("Noun");
  String cel = prompt("Celebrity");
  print("Roses are $col");
  print("$noun are blue");
  print("I Love $cel");
}
