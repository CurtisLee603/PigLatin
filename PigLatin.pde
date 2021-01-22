public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}
public int findFirstVowel(String sWord) {
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
  int answer = -1;
  for(int i = 0; i < sWord.length(); i++) {
    if(sWord.substring(i, i + 1).equals("a")) {
      answer = i;
      break;
    }else
    if(sWord.substring(i, i + 1).equals("e")) {
      answer = i;
      break;
    }else
    if(sWord.substring(i, i + 1).equals("i")) {
      answer = i;
      break;
    }else
    if(sWord.substring(i, i + 1).equals("o")) {
      answer = i;
      break;
    }else
    if(sWord.substring(i, i + 1).equals("u")) {
      if(sWord.substring(i - 1, i).equals("q")) {
        answer = i + 1;
      }else
        answer = i;
        break;
    }
  }
  return answer;
}

public String pigLatin(String sWord) {
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
  if(findFirstVowel(sWord) == 0) {
    return sWord + "ay";
  }else 
  if(findFirstVowel(sWord) == 1) {
    return sWord.substring(1) + sWord.substring(0, 1) + "ay";
  }else 
  if(findFirstVowel(sWord) == 2) {
    return sWord.substring(2) + sWord.substring(0, 2) + "ay";
  }else 
  if(findFirstVowel(sWord) == 3) {
    return sWord.substring(3) + sWord.substring(0, 3) + "ay";
  }else 
  
  if(findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  }else {
    return "ERROR!";
  }
}
