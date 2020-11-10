/*****************************************************************************
 Assignment 3
 Juvaughn Mahabeer
 ******************************************************************************/

import javax.swing.JOptionPane; //the JOption pane import library

String userInput = " "; //userinput with an empty string
String encryptedText = " "; //encryptedText with an empty string
String decryptedText = " ";//decrptedText with an empty string
int shiftKey = 0; //shiftKey set to zero
int numAlpha = 26; //The number of letters of the alphabet set to 26

final String KEYWORD = "JUVAUGHN"; //Keyword for the Vigenere cipher algorithm

boolean isAllLetters = false; //boolean to check is all the values are letters

//The setup function
void setup() {
}

//The draw function
void draw() {

  String initialPrompt = JOptionPane.showInputDialog("Enter one of the three options \"caesar\", \"vigenere\", or \"quit\"\n in the dialog box."); //the input that will be stored in InitialPrompt

  //If statement for the Caesar cipher
  if (initialPrompt.equalsIgnoreCase("caesar") ) {

    String keyInput = JOptionPane.showInputDialog("Enter an integer for the KEY!"); //the input that will be stored in shiftKey
    shiftKey = int(keyInput); //A cast from string to int

for(int i = 0; i < 10; i++){
    if ( shiftKey < 1 || shiftKey > 25) { //An if statement that keeps asking the user for a volid input between 1 and 25
      keyInput = JOptionPane.showInputDialog("Enter an integer for the KEY!"); //the input that will be stored in shiftKey
      shiftKey = int(keyInput); //A cast from string to int
      }
    } 

    userInput = JOptionPane.showInputDialog("Input user data to Encrypt!"); //The input value being stored in userInput

    //Function to check if all the values are letters
    checkAllLetters();

    if (isAllLetters) {
      //The caesarEncrypt being called
      caesarEncrypt();
    } else {
      userInput = JOptionPane.showInputDialog("Input user data Encrypt!"); //The input value being stored in userInput
    }


    userInput = JOptionPane.showInputDialog("Input user data to Decrypt!"); //The input value being stored in userInput

    //Function to check if all the values are letters
    checkAllLetters();

    if (isAllLetters) {
      //The caesarDecrypt being called
      caesarDecrypt();
    } else {
      userInput = JOptionPane.showInputDialog("Input user data Decrypt!"); //The input value being stored in userInput
    }
  } 




  //If statement for the vigenere cipher 
  if (initialPrompt.equalsIgnoreCase("vigenere")) { 

    userInput = JOptionPane.showInputDialog("Input user data Encrypt!"); //The input value being stored in userInput

    //Function to check if all the values are letters
    checkAllLetters();

    if (isAllLetters) {
      //The function for the vigenere encrypt
      vigenereEncrypt();
      //The function for the vigenere encrypt
    } else
        userInput = JOptionPane.showInputDialog("Input user data Encrypt!"); //The input value being stored in userInput


    userInput = JOptionPane.showInputDialog("Input user data Decrypt!"); //The input value being stored in userInput
    //Function to check if all the values are letters
    checkAllLetters();

    if (isAllLetters) {
      //The caesarDecrypt being called
      vigenereDecrypt();
    } else
        userInput = JOptionPane.showInputDialog("Input user data Decrypt!"); //The input value being stored in userInput

  }


  //If statment for the quit option
  if (initialPrompt.equalsIgnoreCase("quit")) {

    //String quitInput = JOptionPane.showInputDialog("Are you sure you want to quit? then enter 'quit' again otherwise enter 'no'"); //the input that will be stored in shiftKey
    //If statement to control the quit input
    //if (quitInput.equals("quit")) {
    //Print being printed to the console
    println("\nquit");
    exit(); //End the program
    //}
  }
}



//The caesarEncrypt function
void caesarEncrypt() {

  int char1 = ((userInput.charAt(0) - 'a' )+ shiftKey)%numAlpha; //The int value of the first char in the string inputed by the user
  int char2 = ((userInput.charAt(1) - 'b' )+ shiftKey)%numAlpha; //The int value of the second char in the string inputed by the user
  int char3 = ((userInput.charAt(2) - 'c' )+ shiftKey)%numAlpha; //The int value of the third char in the string inputed by the user
  int char4 = ((userInput.charAt(3) - 'd' )+ shiftKey)%numAlpha; //The int value of the forth char in the string inputed by the user
  int char5 = ((userInput.charAt(4) - 'e' )+ shiftKey)%numAlpha; //The int value of the fifth char in the string inputed by the user
  int char6 = ((userInput.charAt(5) - 'f' )+ shiftKey)%numAlpha; //The int value of the sixth char in the string inputed by the user
  int char7 = ((userInput.charAt(6) - 'g' )+ shiftKey)%numAlpha; //The int value of the seventh char in the string inputed by the user
  int char8 = ((userInput.charAt(7) - 'h' )+ shiftKey)%numAlpha; //The int value of the eight char in the string inputed by the user
  int char9 = ((userInput.charAt(8) - 'i' )+ shiftKey)%numAlpha; //The int value of the nineth char in the string inputed by the user
  int char10 = ((userInput.charAt(9) - 'j')+ shiftKey)%numAlpha; //The int value of the tenth char in the string inputed by the user
  int char11 = ((userInput.charAt(10) - 'k')+ shiftKey)%numAlpha; //The int value of the eleventh char in the string inputed by the user
  int char12 = ((userInput.charAt(11) - 'l')+ shiftKey)%numAlpha; //The int value of the twelvthe char in the string inputed by the user
  int char13 = ((userInput.charAt(12) - 'm')+ shiftKey)%numAlpha; //The int value of the thirteenth char in the string inputed by the user
  int char14 = ((userInput.charAt(13) - 'n')+ shiftKey)%numAlpha; //The int value of the forteenth char in the string inputed by the user
  int char15 = ((userInput.charAt(14) - 'o')+ shiftKey)%numAlpha; //The int value of the fifteenth char in the string inputed by the user


  char1 = char1 + 'a'; 
  char enChar1 = (char)(char1);//The first encryption value converted back to char

  char2 = char2 + 'b';
  char enChar2 = (char)(char2);//The first encryption value converted back to char

  char3 = char3 + 'c';
  char enChar3 = (char)(char3);//The first encryption value converted back to char

  char4 = char4 + 'd';
  char enChar4 = (char)(char4);//The first encryption value converted back to char

  char5 = char5 + 'e';
  char enChar5 = (char)(char5);//The first encryption value converted back to char

  char6 = char6 + 'f';
  char enChar6 = (char)(char6);//The first encryption value converted back to char

  char7 = char7 + 'g';
  char enChar7 = (char)(char7);//The first encryption value converted back to char

  char8 = char8 + 'h';
  char enChar8 = (char)(char8);//The first encryption value converted back to char

  char9 = char9 + 'i';
  char enChar9 = (char)(char9);//The first encryption value converted back to char

  char10 = char10 + 'j';
  char enChar10 = (char)(char10);//The first encryption value converted back to char

  char11 = char11 + 'k';
  char enChar11 = (char)(char11);//The first encryption value converted back to char

  char12 = char12 + 'l';
  char enChar12 = (char)(char12);//The first encryption value converted back to char

  char13 = char13 + 'm';
  char enChar13 = (char)(char13);//The first encryption value converted back to char

  char14 = char14 + 'n';
  char enChar14 = (char)(char14);//The first encryption value converted back to char

  char15 = char15 + 'o';
  char enChar15 = (char)(char15);//The first encryption value converted back to char

  //The complete encryption text stored in encryptText
  encryptedText = " " + enChar1 + enChar2 + enChar3 + enChar4 + enChar5 + enChar6 + enChar7 + enChar8 + enChar9 + enChar10 + enChar11 + enChar12 + enChar13 + enChar14 + enChar15 + " ";

  println("The Caesar Cipher Encryption!\n");
  //The text printed to the console telling the user the encryption
  println("You entered the plaintext: " + userInput +"\n"+ "and the ciphertext is: " + encryptedText +"\n");
}

//The decryption function
void caesarDecrypt() {

  int char1 = ((userInput.charAt(0) - 'a' )- shiftKey)%numAlpha; //The int value of the first char in the string inputed by the user
  int char2 = ((userInput.charAt(1) - 'b' )- shiftKey)%numAlpha; //The int value of the second char in the string inputed by the user
  int char3 = ((userInput.charAt(2) - 'c' )- shiftKey)%numAlpha; //The int value of the third char in the string inputed by the user
  int char4 = ((userInput.charAt(3) - 'd' )- shiftKey)%numAlpha; //The int value of the forth char in the string inputed by the user
  int char5 = ((userInput.charAt(4) - 'e' )- shiftKey)%numAlpha; //The int value of the fifth char in the string inputed by the user
  int char6 = ((userInput.charAt(5) - 'f' )- shiftKey)%numAlpha; //The int value of the sixth char in the string inputed by the user
  int char7 = ((userInput.charAt(6) - 'g' )- shiftKey)%numAlpha; //The int value of the seventh char in the string inputed by the user
  int char8 = ((userInput.charAt(7) - 'h' )- shiftKey)%numAlpha; //The int value of the eight char in the string inputed by the user
  int char9 = ((userInput.charAt(8) - 'i' )- shiftKey)%numAlpha; //The int value of the nineth char in the string inputed by the user
  int char10 = ((userInput.charAt(9) - 'j')- shiftKey)%numAlpha; //The int value of the tenth char in the string inputed by the user
  int char11 = ((userInput.charAt(10) - 'k')- shiftKey)%numAlpha; //The int value of the eleventh char in the string inputed by the user
  int char12 = ((userInput.charAt(11) - 'l')- shiftKey)%numAlpha; //The int value of the twelvthe char in the string inputed by the user
  int char13 = ((userInput.charAt(12) - 'm')- shiftKey)%numAlpha; //The int value of the thirteenth char in the string inputed by the user
  int char14 = ((userInput.charAt(13) - 'n')- shiftKey)%numAlpha; //The int value of the forteenth char in the string inputed by the user
  int char15 = ((userInput.charAt(14) - 'o')- shiftKey)%numAlpha; //The int value of the fifteenth char in the string inputed by the user


  char1 = char1 + 'a'; 
  char deChar1 = (char)(char1);//The 1st decryption value converted back to char

  char2 = char2 + 'b';
  char deChar2 = (char)(char2);//The 2nd decryption value converted back to char

  char3 = char3 + 'c';
  char deChar3 = (char)(char3);//The 3rd decryption value converted back to char

  char4 = char4 + 'd';
  char deChar4 = (char)(char4);//The 4rth decryption value converted back to char

  char5 = char5 + 'e';
  char deChar5 = (char)(char5);//The 5th decryption value converted back to char

  char6 = char6 + 'f';
  char deChar6 = (char)(char6);//The 6th decryption value converted back to char

  char7 = char7 + 'g';
  char deChar7 = (char)(char7);//The 7th decryption value converted back to char

  char8 = char8 + 'h';
  char deChar8 = (char)(char8);//The 8th decryption value converted back to char

  char9 = char9 + 'i';
  char deChar9 = (char)(char9);//The 9th decryption value converted back to char

  char10 = char10 + 'j';
  char deChar10 = (char)(char10);//The 10th decryption value converted back to char

  char11 = char11 + 'k';
  char deChar11 = (char)(char11);//The 11th decryption value converted back to char

  char12 = char12 + 'l';
  char deChar12 = (char)(char12);//The 12th decryption value converted back to char

  char13 = char13 + 'm';
  char deChar13 = (char)(char13);//The 13th decryption value converted back to char

  char14 = char14 + 'n';
  char deChar14 = (char)(char14);//The 14th decryption value converted back to char

  char15 = char15 + 'o';
  char deChar15 = (char)(char15);//The 15th decryption value converted back to char

  decryptedText = " " + deChar1 + deChar2 + deChar3 + deChar4 + deChar5 + deChar6 + deChar7 + deChar8 + deChar9 + deChar10 + deChar11 + deChar12 + deChar13 + deChar14 + deChar15 + " ";

  //Print the header
  println("The Caesar Cipher Decryption!\n");
  //Print the decryption
  println("You entered the ciphertext:" + userInput +"\n"+ "and the plaintext is: " + decryptedText+ "\n\n" );
}


//The vigenere function
void vigenereEncrypt() {

  int char1 = ((userInput.charAt(0) - 'j' )+ shiftKey)%numAlpha; //The int value of the first char in the string inputed by the user
  int char2 = ((userInput.charAt(1) - 'u' )+ shiftKey)%numAlpha; //The int value of the second char in the string inputed by the user
  int char3 = ((userInput.charAt(2) - 'v' )+ shiftKey)%numAlpha; //The int value of the third char in the string inputed by the user
  int char4 = ((userInput.charAt(3) - 'a' )+ shiftKey)%numAlpha; //The int value of the forth char in the string inputed by the user
  int char5 = ((userInput.charAt(4) - 'u' )+ shiftKey)%numAlpha; //The int value of the fifth char in the string inputed by the user
  int char6 = ((userInput.charAt(5) - 'j' )+ shiftKey)%numAlpha; //The int value of the sixth char in the string inputed by the user
  int char7 = ((userInput.charAt(6) - 'u' )+ shiftKey)%numAlpha; //The int value of the seventh char in the string inputed by the user
  int char8 = ((userInput.charAt(7) - 'v' )+ shiftKey)%numAlpha; //The int value of the eight char in the string inputed by the user
  int char9 = ((userInput.charAt(8) - 'a' )+ shiftKey)%numAlpha; //The int value of the nineth char in the string inputed by the user
  int char10 = ((userInput.charAt(9) - 'j')+ shiftKey)%numAlpha; //The int value of the tenth char in the string inputed by the user
  int char11 = ((userInput.charAt(10) - 'g')+ shiftKey)%numAlpha; //The int value of the eleventh char in the string inputed by the user
  int char12 = ((userInput.charAt(11) - 'h')+ shiftKey)%numAlpha; //The int value of the twelvthe char in the string inputed by the user
  int char13 = ((userInput.charAt(12) - 'j')+ shiftKey)%numAlpha; //The int value of the thirteenth char in the string inputed by the user
  int char14 = ((userInput.charAt(13) - 'g')+ shiftKey)%numAlpha; //The int value of the forteenth char in the string inputed by the user
  int char15 = ((userInput.charAt(14) - 'u')+ shiftKey)%numAlpha; //The int value of the fifteenth char in the string inputed by the user


  char1 = char1 + 'j'; 
  char enChar1 = (char)(char1);//The first encryption value converted back to char

  char2 = char2 + 'v';
  char enChar2 = (char)(char2);//The first encryption value converted back to char

  char3 = char3 + 'v';
  char enChar3 = (char)(char3);//The first encryption value converted back to char

  char4 = char4 + 'a';
  char enChar4 = (char)(char4);//The first encryption value converted back to char

  char5 = char5 + 'u';
  char enChar5 = (char)(char5);//The first encryption value converted back to char

  char6 = char6 + 'g';
  char enChar6 = (char)(char6);//The first encryption value converted back to char

  char7 = char7 + 'h';
  char enChar7 = (char)(char7);//The first encryption value converted back to char

  char8 = char8 + 'n';
  char enChar8 = (char)(char8);//The first encryption value converted back to char

  char9 = char9 + 'j';
  char enChar9 = (char)(char9);//The first encryption value converted back to char

  char10 = char10 + 'u';
  char enChar10 = (char)(char10);//The first encryption value converted back to char

  char11 = char11 + 'v';
  char enChar11 = (char)(char11);//The first encryption value converted back to char

  char12 = char12 + 'a';
  char enChar12 = (char)(char12);//The first encryption value converted back to char

  char13 = char13 + 'u';
  char enChar13 = (char)(char13);//The first encryption value converted back to char

  char14 = char14 + 'g';
  char enChar14 = (char)(char14);//The first encryption value converted back to char

  char15 = char15 + 'h';
  char enChar15 = (char)(char15);//The first encryption value converted back to char

  encryptedText = " " + enChar1 + enChar2 + enChar3 + enChar4 + enChar5 + enChar6 + enChar7 + enChar8 + enChar9 + enChar10 + enChar11 + enChar12 + enChar13 + enChar14 + enChar15 + " ";

  println("The Vigenere Cipher Encryption!\n");

  //The text printed to the console telling the user the Vigenere encryption method
  println("You entered the plaintext: " + userInput +"\n"+ "and the Vigenere ciphertext is:" + encryptedText.toUpperCase() + "\n");
}




void vigenereDecrypt() {

  int char1 = ((userInput.charAt(0) - 'j' )- shiftKey)%numAlpha; //The int value of the first char in the string inputed by the user
  int char2 = ((userInput.charAt(1) - 'u' )- shiftKey)%numAlpha; //The int value of the second char in the string inputed by the user
  int char3 = ((userInput.charAt(2) - 'v' )- shiftKey)%numAlpha; //The int value of the third char in the string inputed by the user
  int char4 = ((userInput.charAt(3) - 'a' )- shiftKey)%numAlpha; //The int value of the forth char in the string inputed by the user
  int char5 = ((userInput.charAt(4) - 'u' )- shiftKey)%numAlpha; //The int value of the fifth char in the string inputed by the user
  int char6 = ((userInput.charAt(5) - 'g' )- shiftKey)%numAlpha; //The int value of the sixth char in the string inputed by the user
  int char7 = ((userInput.charAt(6) - 'h' )- shiftKey)%numAlpha; //The int value of the seventh char in the string inputed by the user
  int char8 = ((userInput.charAt(7) - 'n' )- shiftKey)%numAlpha; //The int value of the eight char in the string inputed by the user
  int char9 = ((userInput.charAt(8) - 'j' )- shiftKey)%numAlpha; //The int value of the nineth char in the string inputed by the user
  int char10 = ((userInput.charAt(9) - 'u')- shiftKey)%numAlpha; //The int value of the tenth char in the string inputed by the user
  int char11 = ((userInput.charAt(10) - 'v')- shiftKey)%numAlpha; //The int value of the eleventh char in the string inputed by the user
  int char12 = ((userInput.charAt(11) - 'a')- shiftKey)%numAlpha; //The int value of the twelvthe char in the string inputed by the user
  int char13 = ((userInput.charAt(12) - 'u')- shiftKey)%numAlpha; //The int value of the thirteenth char in the string inputed by the user
  int char14 = ((userInput.charAt(13) - 'g')- shiftKey)%numAlpha; //The int value of the forteenth char in the string inputed by the user
  int char15 = ((userInput.charAt(14) - 'h')- shiftKey)%numAlpha; //The int value of the fifteenth char in the string inputed by the user


  char1 = char1 + 'j'; 
  char deChar1 = (char)(char1);//The 1st decryption value converted back to char

  char2 = char2 + 'h';
  char deChar2 = (char)(char2);//The 2nd decryption value converted back to char

  char3 = char3 + 'n';
  char deChar3 = (char)(char3);//The 3rd decryption value converted back to char

  char4 = char4 + 'j';
  char deChar4 = (char)(char4);//The 4rth decryption value converted back to char

  char5 = char5 + 'j';
  char deChar5 = (char)(char5);//The 5th decryption value converted back to char

  char6 = char6 + 'g';
  char deChar6 = (char)(char6);//The 6th decryption value converted back to char

  char7 = char7 + 'v';
  char deChar7 = (char)(char7);//The 7th decryption value converted back to char

  char8 = char8 + 'a';
  char deChar8 = (char)(char8);//The 8th decryption value converted back to char

  char9 = char9 + 'g';
  char deChar9 = (char)(char9);//The 9th decryption value converted back to char

  char10 = char10 + 'j';
  char deChar10 = (char)(char10);//The 10th decryption value converted back to char

  char11 = char11 + 'u';
  char deChar11 = (char)(char11);//The 11th decryption value converted back to char

  char12 = char12 + 'v';
  char deChar12 = (char)(char12);//The 12th decryption value converted back to char

  char13 = char13 + 'a';
  char deChar13 = (char)(char13);//The 13th decryption value converted back to char

  char14 = char14 + 'u';
  char deChar14 = (char)(char14);//The 14th decryption value converted back to char

  char15 = char15 + 'g';
  char deChar15 = (char)(char15);//The 15th decryption value converted back to char
  
  decryptedText = " " + deChar1 + deChar2 + deChar3 + deChar4 + deChar5 + deChar6 + deChar7 + deChar8 + deChar9 + deChar10 + deChar11 + deChar12 + deChar13 + deChar14 + deChar15 + " ";

  println("The Vigenere Cipher Decryption!\n");

  //The text printed to the console telling the user the Vigenere decryption method
  println("You entered the plaintext: " + userInput +"\n"+ "and the Vigenere ciphertext is:" + decryptedText.toUpperCase( )+ "\n\n\n");
}



//The check all letters function
void checkAllLetters() {

  char letter1 = userInput.charAt(0); //The first character of userinput stored as a char
  char letter2 = userInput.charAt(1);//The second character of userinput stored as a char
  char letter3 = userInput.charAt(2);//The third character of userinput stored as a char
  char letter4 = userInput.charAt(3);//The forth character of userinput stored as a char
  char letter5 = userInput.charAt(4);//The 5th character of userinput stored as a char
  char letter6 = userInput.charAt(5);//The 6th character of userinput stored as a char
  char letter7 = userInput.charAt(6);//The 7th character of userinput stored as a char
  char letter8 = userInput.charAt(7);//The 8th character of userinput stored as a char
  char letter9 = userInput.charAt(8);//The 9th character of userinput stored as a char
  char letter10 = userInput.charAt(9);//The 10th character of userinput stored as a char
  char letter11 = userInput.charAt(10);//The 11th character of userinput stored as a char
  char letter12 = userInput.charAt(11);//The 12th character of userinput stored as a char
  char letter13 = userInput.charAt(12);//The 13th character of userinput stored as a char
  char letter14 = userInput.charAt(13);//The 14th character of userinput stored as a char
  char letter15 = userInput.charAt(14);//The 15th character of userinput stored as a char

  //An if statement to check each character in userinput to make sure that they are letters
  if (Character.isLetter(letter1) &&Character.isLetter(letter2) &&Character.isLetter(letter3) &&Character.isLetter(letter4) &&
    Character.isLetter(letter5) &&Character.isLetter(letter6) &&Character.isLetter(letter7) &&Character.isLetter(letter8) &&
    Character.isLetter(letter9) &&Character.isLetter(letter10) &&Character.isLetter(letter11) &&Character.isLetter(letter12) &&
    Character.isLetter(letter13) &&Character.isLetter(letter14) &&Character.isLetter(letter15)) {

    isAllLetters = true; //If they are no letters then isAllLetters boolean will change to true

    //println("All entry in userInput are Letters!\n\n"); //Print that they're no non-letters in the userInput
  } else {

    //println("One or more characters in your entry are non-Letters!\n\n"); //Print that they're non-letters in the userInput
  }
}
