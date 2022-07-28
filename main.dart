void main(){
  String word = 'mississippi';

  List<String> repeatedChars = getRepeatedChars(word);
  print("\nRepeated Chars in '$word' are '$repeatedChars'.");
}

List<String> getRepeatedChars(String word) {
  List<String> repeatedChars = [];
  int count = 0;
  for(int index = 0; index < word.length-1; index++){
    if(word[index] == word[index+1]){
      count++;
    } else {
      if(count > 0){
        repeatedChars.add(word[index]);
      }
      count = 0;
    }
  }
  if(count > 0){
    repeatedChars.add(word[word.length-1]);
  }
  return repeatedChars;
}

