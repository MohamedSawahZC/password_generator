class PasswordGenerator{


  //Method to generate password
  String passwordGenerate(int passwordLength) {
    //List contain all uppercase alphabets;
    List<String> upperAlphabets = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z"
    ];
    //List contain all lowercase alphabets;

    List<String> lowerAlphabets = [
      "a",
      "b",
      "c",
      "d",
      "e",
      "f",
      "g",
      "h",
      "i",
      "j",
      "k",
      "l",
      "m",
      "n",
      "o",
      "p",
      "q",
      "r",
      "s",
      "t",
      "u",
      "v",
      "w",
      "x",
      "y",
      "z"
    ];
    //List contain all digits alphabets;

    List<String> digits = [
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
    ];
    //List contain all punctuations alphabets;

    List<String> punctuation = ['!', '"', '#', '\$', '%', '&', "'", '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_', '`', '{', '|', '}', '~'];
    upperAlphabets.shuffle();
    lowerAlphabets.shuffle();
    digits.shuffle();
    punctuation.shuffle();
    List<String> password = upperAlphabets+digits+punctuation+lowerAlphabets;
    password.shuffle();
    String result="";
    for(int i=0 ; i<passwordLength ; i++){
      result +=password[i];
    }
    return result;
  }

  bool isPasswordValid(String password, [int minLength = 8]) {
    if (password == null || password.isEmpty) {
      return false;
    }

    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(new RegExp(r'[0-9]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
    bool hasSpecialCharacters = password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length < minLength;

    return hasDigits & hasUppercase & hasLowercase & hasSpecialCharacters & hasMinLength;
  }

  String isPasswordValidWithMessage(String password, [int minLength = 8]) {
    if (password == null || password.isEmpty) {
      return "Please enter password";
    }

    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(new RegExp(r'[0-9]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
    bool hasSpecialCharacters = password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length >= minLength;

    if(!hasUppercase){
      return "Password must containt uppercase";
    }else{
      if(!hasDigits){
        return "Password must contain digits";
      }else{
        if(!hasLowercase){
          return "Password must contain lowercase";
        }else{
          if(!hasSpecialCharacters){
            return "Password must contain symbols";
          }else{
            if(!hasMinLength){
              return "Password is too short";
            }else{
              return "Password is strong";
            };
          };
        };
      };
    };
  }


}