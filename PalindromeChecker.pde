public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String wordToModify = new String();		//Reversed, other operations
  String originalWordModded = new String(word);	//Non-reversed, other operations

  wordToModify = reverse(word);
  wordToModify = noSpaces(wordToModify);
  wordToModify = noCapitals(wordToModify);
  wordToModify = noNonLetters(wordToModify);
  originalWordModded = noSpaces(originalWordModded);
  originalWordModded = noCapitals(originalWordModded);
  originalWordModded = noNonLetters(originalWordModded);

  if (wordToModify.equals(originalWordModded)) {
    return true;
  }
  return false;
}

public String reverse(String sWord){
  String wordToReturn = new String();
  int pos = sWord.length() -1;
  while (pos >=0) {
    wordToReturn = wordToReturn + sWord.substring(pos, pos + 1);
    pos--;
  }

  return wordToReturn;
}

public String noSpaces(String sWord){
  String noSpaceString = new String();
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.substring(i, i + 1).equals(" ")) {
      
    }
    else {
      noSpaceString = noSpaceString + sWord.substring(i,i+1);
    }
  }
	return noSpaceString;
}

public String noCapitals(String sWord){
	return sWord.toLowerCase();
}

public String noNonLetters(String sWord) {
	String onlyLetters = new String();
  	for (int i = 0; i < sWord.length(); i++) {
    	char c = sWord.charAt(i);
	    if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
	        onlyLetters = onlyLetters + sWord.substring(i,i+1);
    	}
    	else {

    	}
  	}
  return onlyLetters;
}