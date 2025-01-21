public void setup(){
  String[] lines = {"test", "rotator","rewriter","nurses run","Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++){
    if(isPalindrome(lowercaseNoSpace(lines[i]))==true){
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else{
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String word){
  return(word.equals(reverse(word)));
}
public String reverse(String str){
  String word="";
  for(int n=str.length();n>0;n--){word=word+str.substring(n-1,n);}
  return word;
}
public String lowercaseNoSpace(String str){
  String word="";
  for(int n=0;n<str.length();n++){
    if(Character.isLetter(str.charAt(n))) word=word+str.charAt(n);
  }
  return word.toLowerCase();
}
