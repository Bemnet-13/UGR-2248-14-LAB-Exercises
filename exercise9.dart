// Exercise - 9 -- Functions

void main() {
  String word = reverse('input');
  print(word);
}

String reverse(String phrase) {
  String reversed = '';
  for (int i = phrase.length - 1; i >= 0; i--) {
    reversed += phrase[i];
  }
  return reversed;
}
