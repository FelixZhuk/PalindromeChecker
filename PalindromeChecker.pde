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
  String wordToCheck = new String();
  int pos = word.length() -1;
  while (pos >=0) {
    wordToCheck = wordToCheck + word.substring(pos, pos + 1);
    pos--;
  }
  if (wordToCheck.equals(word)) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String wordToReturn = new String();
  int pos = str.length() -1;
  while (pos >=0) {
    wordToReturn = wordToReturn + str.substring(pos, pos + 1);
    pos--;
  }
  return wordToReturn;
}


