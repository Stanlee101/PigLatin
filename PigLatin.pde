public void setup() {
  String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++){
    System.out.println(pigLatin(lines[i]));
  }
}

int pos = 0;

public int findFirstVowel(String sWord){
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
  for (int i = 0; i < sWord.length(); i++){
    pos = 0;
    if (sWord.substring(0, 2).equals("qu")){
      return 0;
    }
    if (sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u")){
      return -2;
    }
    if (sWord.substring(i, i+1).equals("a") || sWord.substring(i, i+1).equals("e") || sWord.substring(i, i+1).equals("i") || sWord.substring(i, i+1).equals("o") || sWord.substring(i, i+1).equals("u")){
      return pos = pos + i;
    }
  }
  return -1;
}
public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1){
    return sWord + "ay";
  }
  else if (findFirstVowel(sWord) == 0){
    return sWord.substring(2) + sWord.substring(0,2) + "ay";
  }
  else if (findFirstVowel(sWord) == -2){
    return sWord + "way";
  }
  return sWord.substring(pos) + sWord.substring(0, pos) + "ay";
}
